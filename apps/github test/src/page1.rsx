<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="5e6cf68b-6001-4e51-bd74-3afdb34223aa"
>
  <GoogleSheetsQuery
    id="getUnixData"
    resourceDisplayName="google sheets test"
    resourceName="f6830784-dfb2-4c52-b8db-e12921fea9da"
    spreadsheetId="19rFpVrK4AJFqVhjsoWDrc6WxjksiKAmb04yRMgfLnrk"
  />
  <GoogleSheetsQuery
    id="updateUnixData"
    actionType="bulkUpdate"
    bulkUpdatePrimaryKey="id"
    bulkUpdateRows="{{ unixTable.changesetArray }}"
    notificationDuration={4.5}
    resourceDisplayName="google sheets test"
    resourceName="f6830784-dfb2-4c52-b8db-e12921fea9da"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    spreadsheetId="19rFpVrK4AJFqVhjsoWDrc6WxjksiKAmb04yRMgfLnrk"
    valueFormatting="unformatted"
  >
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="getUnixData"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Text
      id="text1"
      value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
      verticalAlign="center"
    />
    <Text id="text2" value="this is a github test" verticalAlign="center" />
    <Container
      id="container1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle1"
          value="#### Container"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Image
          id="image1"
          heightType="fixed"
          horizontalAlign="center"
          src="https://picsum.photos/id/1025/800/600"
        />
        <Text id="text3" value="Dog" verticalAlign="center" />
      </View>
    </Container>
    <Table
      id="unixTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getUnixData.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="b3c14"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="b3c14"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d6e8f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="user_id"
        label="User ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="2176f"
        alignment="left"
        editable={true}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="activity_type"
        label="Activity type"
        optionList={{
          mode: "mapped",
          mappedData:
            "['Login','Purchase','Page View','Signup','Logout','Api Call']",
        }}
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="25e83"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="timestamp_seconds"
        label="Timestamp seconds"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="584ca"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="timestamp_milliseconds"
        label="Timestamp milliseconds"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="31215"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="description"
        label="Description"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="unixTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="unixTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="save"
        method="trigger"
        params={{}}
        pluginId="updateUnixData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </Frame>
</Screen>
