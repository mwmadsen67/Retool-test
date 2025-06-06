<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
>
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
  </Frame>
</Screen>
