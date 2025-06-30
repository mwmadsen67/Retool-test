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
  <SqlQueryUnified
    id="getUsers"
    query={include("../lib/getUsers.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="163c7f0d-401e-4b68-adf9-84b7c3368b63"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="updateUsers"
    actionType="BULK_UPDATE_BY_KEY"
    bulkUpdatePrimaryKey="id"
    changeset={'[{"key":"role","value":"{{ table1.changesetArray}}"}]'}
    editorMode="gui"
    notificationDuration={4.5}
    records="{{ table1.changesetArray }}"
    resourceDisplayName="retool_db"
    resourceName="163c7f0d-401e-4b68-adf9-84b7c3368b63"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="sample_users"
  >
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="getUsers"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
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
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getUsers.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="da9b3"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="da9b3"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={48}
        summaryAggregationMode="none"
      />
      <Column
        id="b233b"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={149}
        summaryAggregationMode="none"
      />
      <Column
        id="d1bc8"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="email"
        label="Email"
        position="center"
        size={205}
        summaryAggregationMode="none"
      />
      <Column
        id="18a97"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="signup_date"
        label="Signup date"
        placeholder="Enter value"
        position="center"
        size={160}
        summaryAggregationMode="none"
      />
      <Column
        id="2b5b8"
        alignment="left"
        editable="true"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="role"
        label="Role"
        optionList={{
          mode: "mapped",
          mappedData: "['Viewer','Admin','Editor']",
        }}
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="1af6a"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="enabled"
        label="Enabled"
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
          pluginId="table1"
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
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="save"
        method="trigger"
        params={{}}
        pluginId="updateUsers"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </Frame>
</Screen>
