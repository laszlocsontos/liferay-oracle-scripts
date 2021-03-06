
create table Account_ (
	accountId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	parentAccountId number(30,0),
	name varchar2(300) null,
	legalName varchar2(300) null,
	legalId varchar2(300) null,
	legalType varchar2(300) null,
	sicCode varchar2(300) null,
	tickerSymbol varchar2(300) null,
	industry varchar2(300) null,
	type_ varchar2(300) null,
	size_ varchar2(300) null
);

create table Address (
	addressId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	street1 varchar2(300) null,
	street2 varchar2(300) null,
	street3 varchar2(300) null,
	city varchar2(300) null,
	zip varchar2(300) null,
	regionId number(30,0),
	countryId number(30,0),
	typeId number(30,0),
	mailing number(1, 0),
	primary_ number(1, 0)
);

create table AnnouncementsDelivery (
	deliveryId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	type_ varchar2(300) null,
	email number(1, 0),
	sms number(1, 0),
	website number(1, 0)
);

create table AnnouncementsEntry (
	uuid_ varchar2(300) null,
	entryId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	title varchar2(300) null,
	content varchar2(4000) null,
	url varchar2(4000) null,
	type_ varchar2(300) null,
	displayDate timestamp null,
	expirationDate timestamp null,
	priority number(30,0),
	alert number(1, 0)
);

create table AnnouncementsFlag (
	flagId number(30,0) not null primary key,
	userId number(30,0),
	createDate timestamp null,
	entryId number(30,0),
	value number(30,0)
);

create table AssetCategory (
	uuid_ varchar2(300) null,
	categoryId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	parentCategoryId number(30,0),
	leftCategoryId number(30,0),
	rightCategoryId number(30,0),
	name varchar2(300) null,
	title varchar2(4000) null,
	vocabularyId number(30,0)
);

create table AssetCategoryProperty (
	categoryPropertyId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	categoryId number(30,0),
	key_ varchar2(300) null,
	value varchar2(300) null
);

create table AssetEntries_AssetCategories (
	entryId number(30,0) not null,
	categoryId number(30,0) not null,
	primary key (entryId, categoryId)
);

create table AssetEntries_AssetTags (
	entryId number(30,0) not null,
	tagId number(30,0) not null,
	primary key (entryId, tagId)
);

create table AssetEntry (
	entryId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	classUuid varchar2(300) null,
	visible number(1, 0),
	startDate timestamp null,
	endDate timestamp null,
	publishDate timestamp null,
	expirationDate timestamp null,
	mimeType varchar2(300) null,
	title varchar2(4000) null,
	description varchar2(4000) null,
	summary varchar2(4000) null,
	url varchar2(4000) null,
	height number(30,0),
	width number(30,0),
	priority number(30,20),
	viewCount number(30,0)
);

create table AssetLink (
	linkId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	entryId1 number(30,0),
	entryId2 number(30,0),
	type_ number(30,0),
	weight number(30,0)
);

create table AssetTag (
	tagId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	name varchar2(300) null,
	assetCount number(30,0)
);

create table AssetTagProperty (
	tagPropertyId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	tagId number(30,0),
	key_ varchar2(300) null,
	value varchar2(1020) null
);

create table AssetTagStats (
	tagStatsId number(30,0) not null primary key,
	tagId number(30,0),
	classNameId number(30,0),
	assetCount number(30,0)
);

create table AssetVocabulary (
	uuid_ varchar2(300) null,
	vocabularyId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	name varchar2(300) null,
	title varchar2(4000) null,
	description varchar2(4000) null,
	settings_ varchar2(4000) null
);

create table BlogsEntry (
	uuid_ varchar2(300) null,
	entryId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	title varchar2(600) null,
	urlTitle varchar2(600) null,
	content clob null,
	displayDate timestamp null,
	allowPingbacks number(1, 0),
	allowTrackbacks number(1, 0),
	trackbacks clob null,
	status number(30,0),
	statusByUserId number(30,0),
	statusByUserName varchar2(300) null,
	statusDate timestamp null
);

create table BlogsStatsUser (
	statsUserId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	entryCount number(30,0),
	lastPostDate timestamp null,
	ratingsTotalEntries number(30,0),
	ratingsTotalScore number(30,20),
	ratingsAverageScore number(30,20)
);

create table BookmarksEntry (
	uuid_ varchar2(300) null,
	entryId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	folderId number(30,0),
	name varchar2(1020) null,
	url varchar2(4000) null,
	comments varchar2(4000) null,
	visits number(30,0),
	priority number(30,0)
);

create table BookmarksFolder (
	uuid_ varchar2(300) null,
	folderId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	parentFolderId number(30,0),
	name varchar2(300) null,
	description varchar2(4000) null
);

create table BrowserTracker (
	browserTrackerId number(30,0) not null primary key,
	userId number(30,0),
	browserKey number(30,0)
);

create table CalEvent (
	uuid_ varchar2(300) null,
	eventId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	title varchar2(300) null,
	description varchar2(4000) null,
	startDate timestamp null,
	endDate timestamp null,
	durationHour number(30,0),
	durationMinute number(30,0),
	allDay number(1, 0),
	timeZoneSensitive number(1, 0),
	type_ varchar2(300) null,
	repeating number(1, 0),
	recurrence clob null,
	remindBy number(30,0),
	firstReminder number(30,0),
	secondReminder number(30,0)
);

create table ClassName_ (
	classNameId number(30,0) not null primary key,
	value varchar2(800) null
);

create table ClusterGroup (
	clusterGroupId number(30,0) not null primary key,
	name varchar2(300) null,
	clusterNodeIds varchar2(300) null,
	wholeCluster number(1, 0)
);

create table Company (
	companyId number(30,0) not null primary key,
	accountId number(30,0),
	webId varchar2(300) null,
	key_ clob null,
	mx varchar2(300) null,
	homeURL varchar2(4000) null,
	logoId number(30,0),
	system number(1, 0),
	maxUsers number(30,0)
);

create table Contact_ (
	contactId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	accountId number(30,0),
	parentContactId number(30,0),
	firstName varchar2(300) null,
	middleName varchar2(300) null,
	lastName varchar2(300) null,
	prefixId number(30,0),
	suffixId number(30,0),
	male number(1, 0),
	birthday timestamp null,
	smsSn varchar2(300) null,
	aimSn varchar2(300) null,
	facebookSn varchar2(300) null,
	icqSn varchar2(300) null,
	jabberSn varchar2(300) null,
	msnSn varchar2(300) null,
	mySpaceSn varchar2(300) null,
	skypeSn varchar2(300) null,
	twitterSn varchar2(300) null,
	ymSn varchar2(300) null,
	employeeStatusId varchar2(300) null,
	employeeNumber varchar2(300) null,
	jobTitle varchar2(400) null,
	jobClass varchar2(300) null,
	hoursOfOperation varchar2(300) null
);

create table Counter (
	name varchar2(300) not null primary key,
	currentId number(30,0)
);

create table Country (
	countryId number(30,0) not null primary key,
	name varchar2(300) null,
	a2 varchar2(300) null,
	a3 varchar2(300) null,
	number_ varchar2(300) null,
	idd_ varchar2(300) null,
	active_ number(1, 0)
);

create table CyrusUser (
	userId varchar2(300) not null primary key,
	password_ varchar2(300) not null
);

create table CyrusVirtual (
	emailAddress varchar2(300) not null primary key,
	userId varchar2(300) not null
);

create table DLFileEntry (
	uuid_ varchar2(300) null,
	fileEntryId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	versionUserId number(30,0),
	versionUserName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	folderId number(30,0),
	name varchar2(1020) null,
	extension varchar2(300) null,
	mimeType varchar2(300) null,
	title varchar2(1020) null,
	description varchar2(4000) null,
	extraSettings clob null,
	version varchar2(300) null,
	size_ number(30,0),
	readCount number(30,0)
);

create table DLFileRank (
	fileRankId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	createDate timestamp null,
	fileEntryId number(30,0)
);

create table DLFileShortcut (
	uuid_ varchar2(300) null,
	fileShortcutId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	folderId number(30,0),
	toFileEntryId number(30,0),
	status number(30,0),
	statusByUserId number(30,0),
	statusByUserName varchar2(300) null,
	statusDate timestamp null
);

create table DLFileVersion (
	fileVersionId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	fileEntryId number(30,0),
	extension varchar2(300) null,
	mimeType varchar2(300) null,
	title varchar2(1020) null,
	description varchar2(4000) null,
	changeLog varchar2(300) null,
	extraSettings clob null,
	version varchar2(300) null,
	size_ number(30,0),
	status number(30,0),
	statusByUserId number(30,0),
	statusByUserName varchar2(300) null,
	statusDate timestamp null
);

create table DLFolder (
	uuid_ varchar2(300) null,
	folderId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	parentFolderId number(30,0),
	name varchar2(400) null,
	description varchar2(4000) null,
	lastPostDate timestamp null
);

create table EmailAddress (
	emailAddressId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	address varchar2(300) null,
	typeId number(30,0),
	primary_ number(1, 0)
);

create table ExpandoColumn (
	columnId number(30,0) not null primary key,
	companyId number(30,0),
	tableId number(30,0),
	name varchar2(300) null,
	type_ number(30,0),
	defaultData varchar2(4000) null,
	typeSettings clob null
);

create table ExpandoRow (
	rowId_ number(30,0) not null primary key,
	companyId number(30,0),
	tableId number(30,0),
	classPK number(30,0)
);

create table ExpandoTable (
	tableId number(30,0) not null primary key,
	companyId number(30,0),
	classNameId number(30,0),
	name varchar2(300) null
);

create table ExpandoValue (
	valueId number(30,0) not null primary key,
	companyId number(30,0),
	tableId number(30,0),
	columnId number(30,0),
	rowId_ number(30,0),
	classNameId number(30,0),
	classPK number(30,0),
	data_ varchar2(4000) null
);

create table Group_ (
	groupId number(30,0) not null primary key,
	companyId number(30,0),
	creatorUserId number(30,0),
	classNameId number(30,0),
	classPK number(30,0),
	parentGroupId number(30,0),
	liveGroupId number(30,0),
	name varchar2(300) null,
	description varchar2(4000) null,
	type_ number(30,0),
	typeSettings varchar2(4000) null,
	friendlyURL varchar2(400) null,
	active_ number(1, 0)
);

create table Groups_Orgs (
	groupId number(30,0) not null,
	organizationId number(30,0) not null,
	primary key (groupId, organizationId)
);

create table Groups_Permissions (
	groupId number(30,0) not null,
	permissionId number(30,0) not null,
	primary key (groupId, permissionId)
);

create table Groups_Roles (
	groupId number(30,0) not null,
	roleId number(30,0) not null,
	primary key (groupId, roleId)
);

create table Groups_UserGroups (
	groupId number(30,0) not null,
	userGroupId number(30,0) not null,
	primary key (groupId, userGroupId)
);

create table IGFolder (
	uuid_ varchar2(300) null,
	folderId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	parentFolderId number(30,0),
	name varchar2(300) null,
	description varchar2(4000) null
);

create table IGImage (
	uuid_ varchar2(300) null,
	imageId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	folderId number(30,0),
	name varchar2(300) null,
	description varchar2(4000) null,
	smallImageId number(30,0),
	largeImageId number(30,0),
	custom1ImageId number(30,0),
	custom2ImageId number(30,0)
);

create table Image (
	imageId number(30,0) not null primary key,
	modifiedDate timestamp null,
	text_ clob null,
	type_ varchar2(300) null,
	height number(30,0),
	width number(30,0),
	size_ number(30,0)
);

create table JournalArticle (
	uuid_ varchar2(300) null,
	id_ number(30,0) not null primary key,
	resourcePrimKey number(30,0),
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	articleId varchar2(300) null,
	version number(30,20),
	title varchar2(1200) null,
	urlTitle varchar2(600) null,
	description varchar2(4000) null,
	content clob null,
	type_ varchar2(300) null,
	structureId varchar2(300) null,
	templateId varchar2(300) null,
	displayDate timestamp null,
	expirationDate timestamp null,
	reviewDate timestamp null,
	indexable number(1, 0),
	smallImage number(1, 0),
	smallImageId number(30,0),
	smallImageURL varchar2(4000) null,
	status number(30,0),
	statusByUserId number(30,0),
	statusByUserName varchar2(300) null,
	statusDate timestamp null
);

create table JournalArticleImage (
	articleImageId number(30,0) not null primary key,
	groupId number(30,0),
	articleId varchar2(300) null,
	version number(30,20),
	elInstanceId varchar2(300) null,
	elName varchar2(300) null,
	languageId varchar2(300) null,
	tempImage number(1, 0)
);

create table JournalArticleResource (
	uuid_ varchar2(300) null,
	resourcePrimKey number(30,0) not null primary key,
	groupId number(30,0),
	articleId varchar2(300) null
);

create table JournalContentSearch (
	contentSearchId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	privateLayout number(1, 0),
	layoutId number(30,0),
	portletId varchar2(800) null,
	articleId varchar2(300) null
);

create table JournalFeed (
	uuid_ varchar2(300) null,
	id_ number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	feedId varchar2(300) null,
	name varchar2(300) null,
	description varchar2(4000) null,
	type_ varchar2(300) null,
	structureId varchar2(300) null,
	templateId varchar2(300) null,
	rendererTemplateId varchar2(300) null,
	delta number(30,0),
	orderByCol varchar2(300) null,
	orderByType varchar2(300) null,
	targetLayoutFriendlyUrl varchar2(1020) null,
	targetPortletId varchar2(300) null,
	contentField varchar2(300) null,
	feedType varchar2(300) null,
	feedVersion number(30,20)
);

create table JournalStructure (
	uuid_ varchar2(300) null,
	id_ number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	structureId varchar2(300) null,
	parentStructureId varchar2(300) null,
	name varchar2(300) null,
	description varchar2(4000) null,
	xsd clob null
);

create table JournalTemplate (
	uuid_ varchar2(300) null,
	id_ number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	templateId varchar2(300) null,
	structureId varchar2(300) null,
	name varchar2(300) null,
	description varchar2(4000) null,
	xsl clob null,
	langType varchar2(300) null,
	cacheable number(1, 0),
	smallImage number(1, 0),
	smallImageId number(30,0),
	smallImageURL varchar2(4000) null
);

create table Layout (
	uuid_ varchar2(300) null,
	plid number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	privateLayout number(1, 0),
	layoutId number(30,0),
	parentLayoutId number(30,0),
	name varchar2(4000) null,
	title varchar2(4000) null,
	description varchar2(4000) null,
	type_ varchar2(300) null,
	typeSettings clob null,
	hidden_ number(1, 0),
	friendlyURL varchar2(1020) null,
	iconImage number(1, 0),
	iconImageId number(30,0),
	themeId varchar2(300) null,
	colorSchemeId varchar2(300) null,
	wapThemeId varchar2(300) null,
	wapColorSchemeId varchar2(300) null,
	css varchar2(4000) null,
	priority number(30,0),
	layoutPrototypeId number(30,0),
	dlFolderId number(30,0)
);

create table LayoutPrototype (
	layoutPrototypeId number(30,0) not null primary key,
	companyId number(30,0),
	name varchar2(4000) null,
	description varchar2(4000) null,
	settings_ varchar2(4000) null,
	active_ number(1, 0)
);

create table LayoutSet (
	layoutSetId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	privateLayout number(1, 0),
	logo number(1, 0),
	logoId number(30,0),
	themeId varchar2(300) null,
	colorSchemeId varchar2(300) null,
	wapThemeId varchar2(300) null,
	wapColorSchemeId varchar2(300) null,
	css varchar2(4000) null,
	pageCount number(30,0),
	settings_ varchar2(4000) null,
	layoutSetPrototypeId number(30,0)
);

create table LayoutSetPrototype (
	layoutSetPrototypeId number(30,0) not null primary key,
	companyId number(30,0),
	name varchar2(4000) null,
	description varchar2(4000) null,
	settings_ varchar2(4000) null,
	active_ number(1, 0)
);

create table ListType (
	listTypeId number(30,0) not null primary key,
	name varchar2(300) null,
	type_ varchar2(300) null
);

create table Lock_ (
	uuid_ varchar2(300) null,
	lockId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	className varchar2(300) null,
	key_ varchar2(800) null,
	owner varchar2(1200) null,
	inheritable number(1, 0),
	expirationDate timestamp null
);

create table MBBan (
	banId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	banUserId number(30,0)
);

create table MBCategory (
	uuid_ varchar2(300) null,
	categoryId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	parentCategoryId number(30,0),
	name varchar2(300) null,
	description varchar2(4000) null,
	threadCount number(30,0),
	messageCount number(30,0),
	lastPostDate timestamp null
);

create table MBDiscussion (
	discussionId number(30,0) not null primary key,
	classNameId number(30,0),
	classPK number(30,0),
	threadId number(30,0)
);

create table MBMailingList (
	uuid_ varchar2(300) null,
	mailingListId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	categoryId number(30,0),
	emailAddress varchar2(300) null,
	inProtocol varchar2(300) null,
	inServerName varchar2(300) null,
	inServerPort number(30,0),
	inUseSSL number(1, 0),
	inUserName varchar2(300) null,
	inPassword varchar2(300) null,
	inReadInterval number(30,0),
	outEmailAddress varchar2(300) null,
	outCustom number(1, 0),
	outServerName varchar2(300) null,
	outServerPort number(30,0),
	outUseSSL number(1, 0),
	outUserName varchar2(300) null,
	outPassword varchar2(300) null,
	allowAnonymous number(1, 0),
	active_ number(1, 0)
);

create table MBMessage (
	uuid_ varchar2(300) null,
	messageId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	categoryId number(30,0),
	threadId number(30,0),
	rootMessageId number(30,0),
	parentMessageId number(30,0),
	subject varchar2(300) null,
	body clob null,
	attachments number(1, 0),
	anonymous number(1, 0),
	priority number(30,20),
	allowPingbacks number(1, 0),
	status number(30,0),
	statusByUserId number(30,0),
	statusByUserName varchar2(300) null,
	statusDate timestamp null
);

create table MBMessageFlag (
	messageFlagId number(30,0) not null primary key,
	userId number(30,0),
	modifiedDate timestamp null,
	threadId number(30,0),
	messageId number(30,0),
	flag number(30,0)
);

create table MBStatsUser (
	statsUserId number(30,0) not null primary key,
	groupId number(30,0),
	userId number(30,0),
	messageCount number(30,0),
	lastPostDate timestamp null
);

create table MBThread (
	threadId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	categoryId number(30,0),
	rootMessageId number(30,0),
	rootMessageUserId number(30,0),
	messageCount number(30,0),
	viewCount number(30,0),
	lastPostByUserId number(30,0),
	lastPostDate timestamp null,
	priority number(30,20),
	status number(30,0),
	statusByUserId number(30,0),
	statusByUserName varchar2(300) null,
	statusDate timestamp null
);

create table MembershipRequest (
	membershipRequestId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	createDate timestamp null,
	comments varchar2(4000) null,
	replyComments varchar2(4000) null,
	replyDate timestamp null,
	replierUserId number(30,0),
	statusId number(30,0)
);

create table Organization_ (
	organizationId number(30,0) not null primary key,
	companyId number(30,0),
	parentOrganizationId number(30,0),
	leftOrganizationId number(30,0),
	rightOrganizationId number(30,0),
	name varchar2(400) null,
	type_ varchar2(300) null,
	recursable number(1, 0),
	regionId number(30,0),
	countryId number(30,0),
	statusId number(30,0),
	comments varchar2(4000) null
);

create table OrgGroupPermission (
	organizationId number(30,0) not null,
	groupId number(30,0) not null,
	permissionId number(30,0) not null,
	primary key (organizationId, groupId, permissionId)
);

create table OrgGroupRole (
	organizationId number(30,0) not null,
	groupId number(30,0) not null,
	roleId number(30,0) not null,
	primary key (organizationId, groupId, roleId)
);

create table OrgLabor (
	orgLaborId number(30,0) not null primary key,
	organizationId number(30,0),
	typeId number(30,0),
	sunOpen number(30,0),
	sunClose number(30,0),
	monOpen number(30,0),
	monClose number(30,0),
	tueOpen number(30,0),
	tueClose number(30,0),
	wedOpen number(30,0),
	wedClose number(30,0),
	thuOpen number(30,0),
	thuClose number(30,0),
	friOpen number(30,0),
	friClose number(30,0),
	satOpen number(30,0),
	satClose number(30,0)
);

create table PasswordPolicy (
	passwordPolicyId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	defaultPolicy number(1, 0),
	name varchar2(300) null,
	description varchar2(4000) null,
	changeable number(1, 0),
	changeRequired number(1, 0),
	minAge number(30,0),
	checkSyntax number(1, 0),
	allowDictionaryWords number(1, 0),
	minAlphanumeric number(30,0),
	minLength number(30,0),
	minLowerCase number(30,0),
	minNumbers number(30,0),
	minSymbols number(30,0),
	minUpperCase number(30,0),
	history number(1, 0),
	historyCount number(30,0),
	expireable number(1, 0),
	maxAge number(30,0),
	warningTime number(30,0),
	graceLimit number(30,0),
	lockout number(1, 0),
	maxFailure number(30,0),
	lockoutDuration number(30,0),
	requireUnlock number(1, 0),
	resetFailureCount number(30,0),
	resetTicketMaxAge number(30,0)
);

create table PasswordPolicyRel (
	passwordPolicyRelId number(30,0) not null primary key,
	passwordPolicyId number(30,0),
	classNameId number(30,0),
	classPK number(30,0)
);

create table PasswordTracker (
	passwordTrackerId number(30,0) not null primary key,
	userId number(30,0),
	createDate timestamp null,
	password_ varchar2(300) null
);

create table Permission_ (
	permissionId number(30,0) not null primary key,
	companyId number(30,0),
	actionId varchar2(300) null,
	resourceId number(30,0)
);

create table Phone (
	phoneId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	number_ varchar2(300) null,
	extension varchar2(300) null,
	typeId number(30,0),
	primary_ number(1, 0)
);

create table PluginSetting (
	pluginSettingId number(30,0) not null primary key,
	companyId number(30,0),
	pluginId varchar2(300) null,
	pluginType varchar2(300) null,
	roles varchar2(4000) null,
	active_ number(1, 0)
);

create table PollsChoice (
	uuid_ varchar2(300) null,
	choiceId number(30,0) not null primary key,
	questionId number(30,0),
	name varchar2(300) null,
	description varchar2(4000) null
);

create table PollsQuestion (
	uuid_ varchar2(300) null,
	questionId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	title varchar2(4000) null,
	description varchar2(4000) null,
	expirationDate timestamp null,
	lastVoteDate timestamp null
);

create table PollsVote (
	voteId number(30,0) not null primary key,
	userId number(30,0),
	questionId number(30,0),
	choiceId number(30,0),
	voteDate timestamp null
);

create table PortalPreferences (
	portalPreferencesId number(30,0) not null primary key,
	ownerId number(30,0),
	ownerType number(30,0),
	preferences clob null
);

create table Portlet (
	id_ number(30,0) not null primary key,
	companyId number(30,0),
	portletId varchar2(800) null,
	roles varchar2(4000) null,
	active_ number(1, 0)
);

create table PortletItem (
	portletItemId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	name varchar2(300) null,
	portletId varchar2(300) null,
	classNameId number(30,0)
);

create table PortletPreferences (
	portletPreferencesId number(30,0) not null primary key,
	ownerId number(30,0),
	ownerType number(30,0),
	plid number(30,0),
	portletId varchar2(800) null,
	preferences clob null
);

create table RatingsEntry (
	entryId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	score number(30,20)
);

create table RatingsStats (
	statsId number(30,0) not null primary key,
	classNameId number(30,0),
	classPK number(30,0),
	totalEntries number(30,0),
	totalScore number(30,20),
	averageScore number(30,20)
);

create table Region (
	regionId number(30,0) not null primary key,
	countryId number(30,0),
	regionCode varchar2(300) null,
	name varchar2(300) null,
	active_ number(1, 0)
);

create table Release_ (
	releaseId number(30,0) not null primary key,
	createDate timestamp null,
	modifiedDate timestamp null,
	servletContextName varchar2(300) null,
	buildNumber number(30,0),
	buildDate timestamp null,
	verified number(1, 0),
	testString varchar2(4000) null
);

create table Resource_ (
	resourceId number(30,0) not null primary key,
	codeId number(30,0),
	primKey varchar2(1020) null
);

create table ResourceAction (
	resourceActionId number(30,0) not null primary key,
	name varchar2(1020) null,
	actionId varchar2(300) null,
	bitwiseValue number(30,0)
);

create table ResourceCode (
	codeId number(30,0) not null primary key,
	companyId number(30,0),
	name varchar2(1020) null,
	scope number(30,0)
);

create table ResourcePermission (
	resourcePermissionId number(30,0) not null primary key,
	companyId number(30,0),
	name varchar2(1020) null,
	scope number(30,0),
	primKey varchar2(1020) null,
	roleId number(30,0),
	ownerId number(30,0),
	actionIds number(30,0)
);

create table Role_ (
	roleId number(30,0) not null primary key,
	companyId number(30,0),
	classNameId number(30,0),
	classPK number(30,0),
	name varchar2(300) null,
	title varchar2(4000) null,
	description varchar2(4000) null,
	type_ number(30,0),
	subtype varchar2(300) null
);

create table Roles_Permissions (
	roleId number(30,0) not null,
	permissionId number(30,0) not null,
	primary key (roleId, permissionId)
);

create table SCFrameworkVersi_SCProductVers (
	frameworkVersionId number(30,0) not null,
	productVersionId number(30,0) not null,
	primary key (frameworkVersionId, productVersionId)
);

create table SCFrameworkVersion (
	frameworkVersionId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	name varchar2(300) null,
	url varchar2(4000) null,
	active_ number(1, 0),
	priority number(30,0)
);

create table SCLicense (
	licenseId number(30,0) not null primary key,
	name varchar2(300) null,
	url varchar2(4000) null,
	openSource number(1, 0),
	active_ number(1, 0),
	recommended number(1, 0)
);

create table SCLicenses_SCProductEntries (
	licenseId number(30,0) not null,
	productEntryId number(30,0) not null,
	primary key (licenseId, productEntryId)
);

create table SCProductEntry (
	productEntryId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	name varchar2(300) null,
	type_ varchar2(300) null,
	tags varchar2(1020) null,
	shortDescription varchar2(4000) null,
	longDescription varchar2(4000) null,
	pageURL varchar2(4000) null,
	author varchar2(300) null,
	repoGroupId varchar2(300) null,
	repoArtifactId varchar2(300) null
);

create table SCProductScreenshot (
	productScreenshotId number(30,0) not null primary key,
	companyId number(30,0),
	groupId number(30,0),
	productEntryId number(30,0),
	thumbnailId number(30,0),
	fullImageId number(30,0),
	priority number(30,0)
);

create table SCProductVersion (
	productVersionId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	productEntryId number(30,0),
	version varchar2(300) null,
	changeLog varchar2(4000) null,
	downloadPageURL varchar2(4000) null,
	directDownloadURL varchar2(4000) null,
	repoStoreArtifact number(1, 0)
);

create table ServiceComponent (
	serviceComponentId number(30,0) not null primary key,
	buildNamespace varchar2(300) null,
	buildNumber number(30,0),
	buildDate number(30,0),
	data_ clob null
);

create table Shard (
	shardId number(30,0) not null primary key,
	classNameId number(30,0),
	classPK number(30,0),
	name varchar2(300) null
);

create table ShoppingCart (
	cartId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	itemIds varchar2(4000) null,
	couponCodes varchar2(300) null,
	altShipping number(30,0),
	insure number(1, 0)
);

create table ShoppingCategory (
	categoryId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	parentCategoryId number(30,0),
	name varchar2(300) null,
	description varchar2(4000) null
);

create table ShoppingCoupon (
	couponId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	code_ varchar2(300) null,
	name varchar2(300) null,
	description varchar2(4000) null,
	startDate timestamp null,
	endDate timestamp null,
	active_ number(1, 0),
	limitCategories varchar2(4000) null,
	limitSkus varchar2(4000) null,
	minOrder number(30,20),
	discount number(30,20),
	discountType varchar2(300) null
);

create table ShoppingItem (
	itemId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	categoryId number(30,0),
	sku varchar2(300) null,
	name varchar2(800) null,
	description varchar2(4000) null,
	properties varchar2(4000) null,
	fields_ number(1, 0),
	fieldsQuantities varchar2(4000) null,
	minQuantity number(30,0),
	maxQuantity number(30,0),
	price number(30,20),
	discount number(30,20),
	taxable number(1, 0),
	shipping number(30,20),
	useShippingFormula number(1, 0),
	requiresShipping number(1, 0),
	stockQuantity number(30,0),
	featured_ number(1, 0),
	sale_ number(1, 0),
	smallImage number(1, 0),
	smallImageId number(30,0),
	smallImageURL varchar2(4000) null,
	mediumImage number(1, 0),
	mediumImageId number(30,0),
	mediumImageURL varchar2(4000) null,
	largeImage number(1, 0),
	largeImageId number(30,0),
	largeImageURL varchar2(4000) null
);

create table ShoppingItemField (
	itemFieldId number(30,0) not null primary key,
	itemId number(30,0),
	name varchar2(300) null,
	values_ varchar2(4000) null,
	description varchar2(4000) null
);

create table ShoppingItemPrice (
	itemPriceId number(30,0) not null primary key,
	itemId number(30,0),
	minQuantity number(30,0),
	maxQuantity number(30,0),
	price number(30,20),
	discount number(30,20),
	taxable number(1, 0),
	shipping number(30,20),
	useShippingFormula number(1, 0),
	status number(30,0)
);

create table ShoppingOrder (
	orderId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	number_ varchar2(300) null,
	tax number(30,20),
	shipping number(30,20),
	altShipping varchar2(300) null,
	requiresShipping number(1, 0),
	insure number(1, 0),
	insurance number(30,20),
	couponCodes varchar2(300) null,
	couponDiscount number(30,20),
	billingFirstName varchar2(300) null,
	billingLastName varchar2(300) null,
	billingEmailAddress varchar2(300) null,
	billingCompany varchar2(300) null,
	billingStreet varchar2(300) null,
	billingCity varchar2(300) null,
	billingState varchar2(300) null,
	billingZip varchar2(300) null,
	billingCountry varchar2(300) null,
	billingPhone varchar2(300) null,
	shipToBilling number(1, 0),
	shippingFirstName varchar2(300) null,
	shippingLastName varchar2(300) null,
	shippingEmailAddress varchar2(300) null,
	shippingCompany varchar2(300) null,
	shippingStreet varchar2(300) null,
	shippingCity varchar2(300) null,
	shippingState varchar2(300) null,
	shippingZip varchar2(300) null,
	shippingCountry varchar2(300) null,
	shippingPhone varchar2(300) null,
	ccName varchar2(300) null,
	ccType varchar2(300) null,
	ccNumber varchar2(300) null,
	ccExpMonth number(30,0),
	ccExpYear number(30,0),
	ccVerNumber varchar2(300) null,
	comments varchar2(4000) null,
	ppTxnId varchar2(300) null,
	ppPaymentStatus varchar2(300) null,
	ppPaymentGross number(30,20),
	ppReceiverEmail varchar2(300) null,
	ppPayerEmail varchar2(300) null,
	sendOrderEmail number(1, 0),
	sendShippingEmail number(1, 0)
);

create table ShoppingOrderItem (
	orderItemId number(30,0) not null primary key,
	orderId number(30,0),
	itemId varchar2(300) null,
	sku varchar2(300) null,
	name varchar2(800) null,
	description varchar2(4000) null,
	properties varchar2(4000) null,
	price number(30,20),
	quantity number(30,0),
	shippedDate timestamp null
);

create table SocialActivity (
	activityId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	createDate number(30,0),
	mirrorActivityId number(30,0),
	classNameId number(30,0),
	classPK number(30,0),
	type_ number(30,0),
	extraData varchar2(4000) null,
	receiverUserId number(30,0)
);

create table SocialEquityAssetEntry (
	equityAssetEntryId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	assetEntryId number(30,0),
	informationK number(30,20),
	informationB number(30,20)
);

create table SocialEquityGroupSetting (
	equityGroupSettingId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	classNameId number(30,0),
	type_ number(30,0),
	enabled number(1, 0)
);

create table SocialEquityHistory (
	equityHistoryId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	createDate timestamp null,
	personalEquity number(30,0)
);

create table SocialEquityLog (
	equityLogId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	assetEntryId number(30,0),
	actionId varchar2(300) null,
	actionDate number(30,0),
	active_ number(1, 0),
	expiration number(30,0),
	type_ number(30,0),
	value number(30,0),
	extraData varchar2(1020) null
);

create table SocialEquitySetting (
	equitySettingId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	classNameId number(30,0),
	actionId varchar2(300) null,
	dailyLimit number(30,0),
	lifespan number(30,0),
	type_ number(30,0),
	uniqueEntry number(1, 0),
	value number(30,0)
);

create table SocialEquityUser (
	equityUserId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	contributionK number(30,20),
	contributionB number(30,20),
	participationK number(30,20),
	participationB number(30,20),
	rank number(30,0)
);

create table SocialRelation (
	uuid_ varchar2(300) null,
	relationId number(30,0) not null primary key,
	companyId number(30,0),
	createDate number(30,0),
	userId1 number(30,0),
	userId2 number(30,0),
	type_ number(30,0)
);

create table SocialRequest (
	uuid_ varchar2(300) null,
	requestId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	createDate number(30,0),
	modifiedDate number(30,0),
	classNameId number(30,0),
	classPK number(30,0),
	type_ number(30,0),
	extraData varchar2(4000) null,
	receiverUserId number(30,0),
	status number(30,0)
);

create table Subscription (
	subscriptionId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	frequency varchar2(300) null
);

create table TasksProposal (
	proposalId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK varchar2(300) null,
	name varchar2(300) null,
	description varchar2(4000) null,
	publishDate timestamp null,
	dueDate timestamp null
);

create table TasksReview (
	reviewId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	proposalId number(30,0),
	assignedByUserId number(30,0),
	assignedByUserName varchar2(300) null,
	stage number(30,0),
	completed number(1, 0),
	rejected number(1, 0)
);

create table Team (
	teamId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	groupId number(30,0),
	name varchar2(300) null,
	description varchar2(4000) null
);

create table Ticket (
	ticketId number(30,0) not null primary key,
	companyId number(30,0),
	createDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	key_ varchar2(300) null,
	type_ number(30,0),
	extraInfo varchar2(300) null,
	expirationDate timestamp null
);

create table User_ (
	uuid_ varchar2(300) null,
	userId number(30,0) not null primary key,
	companyId number(30,0),
	createDate timestamp null,
	modifiedDate timestamp null,
	defaultUser number(1, 0),
	contactId number(30,0),
	password_ varchar2(300) null,
	passwordEncrypted number(1, 0),
	passwordReset number(1, 0),
	passwordModifiedDate timestamp null,
	digest varchar2(1020) null,
	reminderQueryQuestion varchar2(300) null,
	reminderQueryAnswer varchar2(300) null,
	graceLoginCount number(30,0),
	screenName varchar2(300) null,
	emailAddress varchar2(300) null,
	facebookId number(30,0),
	openId varchar2(4000) null,
	portraitId number(30,0),
	languageId varchar2(300) null,
	timeZoneId varchar2(300) null,
	greeting varchar2(1020) null,
	comments varchar2(4000) null,
	firstName varchar2(300) null,
	middleName varchar2(300) null,
	lastName varchar2(300) null,
	jobTitle varchar2(400) null,
	loginDate timestamp null,
	loginIP varchar2(300) null,
	lastLoginDate timestamp null,
	lastLoginIP varchar2(300) null,
	lastFailedLoginDate timestamp null,
	failedLoginAttempts number(30,0),
	lockout number(1, 0),
	lockoutDate timestamp null,
	agreedToTermsOfUse number(1, 0),
	active_ number(1, 0)
);

create table UserGroup (
	userGroupId number(30,0) not null primary key,
	companyId number(30,0),
	parentUserGroupId number(30,0),
	name varchar2(300) null,
	description varchar2(4000) null,
	addedByLDAPImport number(1, 0)
);

create table UserGroupGroupRole (
	userGroupId number(30,0) not null,
	groupId number(30,0) not null,
	roleId number(30,0) not null,
	primary key (userGroupId, groupId, roleId)
);

create table UserGroupRole (
	userId number(30,0) not null,
	groupId number(30,0) not null,
	roleId number(30,0) not null,
	primary key (userId, groupId, roleId)
);

create table UserGroups_Teams (
	userGroupId number(30,0) not null,
	teamId number(30,0) not null,
	primary key (userGroupId, teamId)
);

create table UserIdMapper (
	userIdMapperId number(30,0) not null primary key,
	userId number(30,0),
	type_ varchar2(300) null,
	description varchar2(300) null,
	externalUserId varchar2(300) null
);

create table UserNotificationEvent (
	uuid_ varchar2(300) null,
	userNotificationEventId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	type_ varchar2(300) null,
	timestamp number(30,0),
	deliverBy number(30,0),
	payload clob null
);

create table Users_Groups (
	userId number(30,0) not null,
	groupId number(30,0) not null,
	primary key (userId, groupId)
);

create table Users_Orgs (
	userId number(30,0) not null,
	organizationId number(30,0) not null,
	primary key (userId, organizationId)
);

create table Users_Permissions (
	userId number(30,0) not null,
	permissionId number(30,0) not null,
	primary key (userId, permissionId)
);

create table Users_Roles (
	userId number(30,0) not null,
	roleId number(30,0) not null,
	primary key (userId, roleId)
);

create table Users_Teams (
	userId number(30,0) not null,
	teamId number(30,0) not null,
	primary key (userId, teamId)
);

create table Users_UserGroups (
	userGroupId number(30,0) not null,
	userId number(30,0) not null,
	primary key (userGroupId, userId)
);

create table UserTracker (
	userTrackerId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	modifiedDate timestamp null,
	sessionId varchar2(800) null,
	remoteAddr varchar2(300) null,
	remoteHost varchar2(300) null,
	userAgent varchar2(800) null
);

create table UserTrackerPath (
	userTrackerPathId number(30,0) not null primary key,
	userTrackerId number(30,0),
	path_ varchar2(4000) null,
	pathDate timestamp null
);

create table VirtualHost (
	virtualHostId number(30,0) not null primary key,
	companyId number(30,0),
	layoutSetId number(30,0),
	hostname varchar2(300) null
);

create table Vocabulary (
	vocabularyId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	name varchar2(300) null,
	description varchar2(300) null,
	folksonomy number(1, 0)
);

create table WebDAVProps (
	webDavPropsId number(30,0) not null primary key,
	companyId number(30,0),
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	props clob null
);

create table Website (
	websiteId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	url varchar2(4000) null,
	typeId number(30,0),
	primary_ number(1, 0)
);

create table WikiNode (
	uuid_ varchar2(300) null,
	nodeId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	name varchar2(300) null,
	description varchar2(4000) null,
	lastPostDate timestamp null
);

create table WikiPage (
	uuid_ varchar2(300) null,
	pageId number(30,0) not null primary key,
	resourcePrimKey number(30,0),
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	nodeId number(30,0),
	title varchar2(1020) null,
	version number(30,20),
	minorEdit number(1, 0),
	content clob null,
	summary varchar2(4000) null,
	format varchar2(300) null,
	head number(1, 0),
	parentTitle varchar2(1020) null,
	redirectTitle varchar2(1020) null,
	status number(30,0),
	statusByUserId number(30,0),
	statusByUserName varchar2(300) null,
	statusDate timestamp null
);

create table WikiPageResource (
	uuid_ varchar2(300) null,
	resourcePrimKey number(30,0) not null primary key,
	nodeId number(30,0),
	title varchar2(1020) null
);

create table WorkflowDefinitionLink (
	workflowDefinitionLinkId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	workflowDefinitionName varchar2(300) null,
	workflowDefinitionVersion number(30,0)
);

create table WorkflowInstanceLink (
	workflowInstanceLinkId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	workflowInstanceId number(30,0)
);


insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (1, 'Canada', 'CA', 'CAN', '124', '001', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (2, 'China', 'CN', 'CHN', '156', '086', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (3, 'France', 'FR', 'FRA', '250', '033', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (4, 'Germany', 'DE', 'DEU', '276', '049', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (5, 'Hong Kong', 'HK', 'HKG', '344', '852', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (6, 'Hungary', 'HU', 'HUN', '348', '036', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (7, 'Israel', 'IL', 'ISR', '376', '972', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (8, 'Italy', 'IT', 'ITA', '380', '039', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (9, 'Japan', 'JP', 'JPN', '392', '081', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (10, 'South Korea', 'KR', 'KOR', '410', '082', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (11, 'Netherlands', 'NL', 'NLD', '528', '031', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (12, 'Portugal', 'PT', 'PRT', '620', '351', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (13, 'Russia', 'RU', 'RUS', '643', '007', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (14, 'Singapore', 'SG', 'SGP', '702', '065', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (15, 'Spain', 'ES', 'ESP', '724', '034', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (16, 'Turkey', 'TR', 'TUR', '792', '090', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (17, 'Vietnam', 'VN', 'VNM', '704', '084', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (18, 'United Kingdom', 'GB', 'GBR', '826', '044', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (19, 'United States', 'US', 'USA', '840', '001', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (20, 'Afghanistan', 'AF', 'AFG', '4', '093', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (21, 'Albania', 'AL', 'ALB', '8', '355', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (22, 'Algeria', 'DZ', 'DZA', '12', '213', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (23, 'American Samoa', 'AS', 'ASM', '16', '684', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (24, 'Andorra', 'AD', 'AND', '20', '376', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (25, 'Angola', 'AO', 'AGO', '24', '244', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (26, 'Anguilla', 'AI', 'AIA', '660', '264', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (27, 'Antarctica', 'AQ', 'ATA', '10', '672', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (28, 'Antigua', 'AG', 'ATG', '28', '268', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (29, 'Argentina', 'AR', 'ARG', '32', '054', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (30, 'Armenia', 'AM', 'ARM', '51', '374', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (31, 'Aruba', 'AW', 'ABW', '533', '297', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (32, 'Australia', 'AU', 'AUS', '36', '061', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (33, 'Austria', 'AT', 'AUT', '40', '043', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (34, 'Azerbaijan', 'AZ', 'AZE', '31', '994', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (35, 'Bahamas', 'BS', 'BHS', '44', '242', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (36, 'Bahrain', 'BH', 'BHR', '48', '973', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (37, 'Bangladesh', 'BD', 'BGD', '50', '880', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (38, 'Barbados', 'BB', 'BRB', '52', '246', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (39, 'Belarus', 'BY', 'BLR', '112', '375', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (40, 'Belgium', 'BE', 'BEL', '56', '032', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (41, 'Belize', 'BZ', 'BLZ', '84', '501', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (42, 'Benin', 'BJ', 'BEN', '204', '229', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (43, 'Bermuda', 'BM', 'BMU', '60', '441', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (44, 'Bhutan', 'BT', 'BTN', '64', '975', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (45, 'Bolivia', 'BO', 'BOL', '68', '591', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (46, 'Bosnia-Herzegovina', 'BA', 'BIH', '70', '387', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (47, 'Botswana', 'BW', 'BWA', '72', '267', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (48, 'Brazil', 'BR', 'BRA', '76', '055', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (49, 'British Virgin Islands', 'VG', 'VGB', '92', '284', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (50, 'Brunei', 'BN', 'BRN', '96', '673', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (51, 'Bulgaria', 'BG', 'BGR', '100', '359', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (52, 'Burkina Faso', 'BF', 'BFA', '854', '226', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (53, 'Burma (Myanmar)', 'MM', 'MMR', '104', '095', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (54, 'Burundi', 'BI', 'BDI', '108', '257', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (55, 'Cambodia', 'KH', 'KHM', '116', '855', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (56, 'Cameroon', 'CM', 'CMR', '120', '237', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (57, 'Cape Verde Island', 'CV', 'CPV', '132', '238', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (58, 'Cayman Islands', 'KY', 'CYM', '136', '345', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (59, 'Central African Republic', 'CF', 'CAF', '140', '236', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (60, 'Chad', 'TD', 'TCD', '148', '235', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (61, 'Chile', 'CL', 'CHL', '152', '056', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (62, 'Christmas Island', 'CX', 'CXR', '162', '061', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (63, 'Cocos Islands', 'CC', 'CCK', '166', '061', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (64, 'Colombia', 'CO', 'COL', '170', '057', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (65, 'Comoros', 'KM', 'COM', '174', '269', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (66, 'Republic of Congo', 'CD', 'COD', '180', '242', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (67, 'Democratic Republic of Congo', 'CG', 'COG', '178', '243', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (68, 'Cook Islands', 'CK', 'COK', '184', '682', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (69, 'Costa Rica', 'CR', 'CRI', '188', '506', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (70, 'Croatia', 'HR', 'HRV', '191', '385', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (71, 'Cuba', 'CU', 'CUB', '192', '053', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (72, 'Cyprus', 'CY', 'CYP', '196', '357', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (73, 'Czech Republic', 'CZ', 'CZE', '203', '420', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (74, 'Denmark', 'DK', 'DNK', '208', '045', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (75, 'Djibouti', 'DJ', 'DJI', '262', '253', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (76, 'Dominica', 'DM', 'DMA', '212', '767', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (77, 'Dominican Republic', 'DO', 'DOM', '214', '809', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (78, 'Ecuador', 'EC', 'ECU', '218', '593', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (79, 'Egypt', 'EG', 'EGY', '818', '020', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (80, 'El Salvador', 'SV', 'SLV', '222', '503', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (81, 'Equatorial Guinea', 'GQ', 'GNQ', '226', '240', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (82, 'Eritrea', 'ER', 'ERI', '232', '291', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (83, 'Estonia', 'EE', 'EST', '233', '372', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (84, 'Ethiopia', 'ET', 'ETH', '231', '251', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (85, 'Faeroe Islands', 'FO', 'FRO', '234', '298', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (86, 'Falkland Islands', 'FK', 'FLK', '238', '500', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (87, 'Fiji Islands', 'FJ', 'FJI', '242', '679', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (88, 'Finland', 'FI', 'FIN', '246', '358', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (89, 'French Guiana', 'GF', 'GUF', '254', '594', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (90, 'French Polynesia', 'PF', 'PYF', '258', '689', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (91, 'Gabon', 'GA', 'GAB', '266', '241', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (92, 'Gambia', 'GM', 'GMB', '270', '220', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (93, 'Georgia', 'GE', 'GEO', '268', '995', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (94, 'Ghana', 'GH', 'GHA', '288', '233', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (95, 'Gibraltar', 'GI', 'GIB', '292', '350', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (96, 'Greece', 'GR', 'GRC', '300', '030', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (97, 'Greenland', 'GL', 'GRL', '304', '299', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (98, 'Grenada', 'GD', 'GRD', '308', '473', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (99, 'Guadeloupe', 'GP', 'GLP', '312', '590', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (100, 'Guam', 'GU', 'GUM', '316', '671', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (101, 'Guatemala', 'GT', 'GTM', '320', '502', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (102, 'Guinea', 'GN', 'GIN', '324', '224', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (103, 'Guinea-Bissau', 'GW', 'GNB', '624', '245', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (104, 'Guyana', 'GY', 'GUY', '328', '592', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (105, 'Haiti', 'HT', 'HTI', '332', '509', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (106, 'Honduras', 'HN', 'HND', '340', '504', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (107, 'Iceland', 'IS', 'ISL', '352', '354', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (108, 'India', 'IN', 'IND', '356', '091', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (109, 'Indonesia', 'ID', 'IDN', '360', '062', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (110, 'Iran', 'IR', 'IRN', '364', '098', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (111, 'Iraq', 'IQ', 'IRQ', '368', '964', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (112, 'Ireland', 'IE', 'IRL', '372', '353', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (113, 'Ivory Coast', 'CI', 'CIV', '384', '225', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (114, 'Jamaica', 'JM', 'JAM', '388', '876', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (115, 'Jordan', 'JO', 'JOR', '400', '962', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (116, 'Kazakhstan', 'KZ', 'KAZ', '398', '007', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (117, 'Kenya', 'KE', 'KEN', '404', '254', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (118, 'Kiribati', 'KI', 'KIR', '408', '686', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (119, 'Kuwait', 'KW', 'KWT', '414', '965', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (120, 'North Korea', 'KP', 'PRK', '408', '850', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (121, 'Kyrgyzstan', 'KG', 'KGZ', '471', '996', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (122, 'Laos', 'LA', 'LAO', '418', '856', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (123, 'Latvia', 'LV', 'LVA', '428', '371', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (124, 'Lebanon', 'LB', 'LBN', '422', '961', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (125, 'Lesotho', 'LS', 'LSO', '426', '266', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (126, 'Liberia', 'LR', 'LBR', '430', '231', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (127, 'Libya', 'LY', 'LBY', '434', '218', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (128, 'Liechtenstein', 'LI', 'LIE', '438', '423', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (129, 'Lithuania', 'LT', 'LTU', '440', '370', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (130, 'Luxembourg', 'LU', 'LUX', '442', '352', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (131, 'Macau', 'MO', 'MAC', '446', '853', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (132, 'Macedonia', 'MK', 'MKD', '807', '389', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (133, 'Madagascar', 'MG', 'MDG', '450', '261', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (134, 'Malawi', 'MW', 'MWI', '454', '265', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (135, 'Malaysia', 'MY', 'MYS', '458', '060', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (136, 'Maldives', 'MV', 'MDV', '462', '960', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (137, 'Mali', 'ML', 'MLI', '466', '223', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (138, 'Malta', 'MT', 'MLT', '470', '356', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (139, 'Marshall Islands', 'MH', 'MHL', '584', '692', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (140, 'Martinique', 'MQ', 'MTQ', '474', '596', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (141, 'Mauritania', 'MR', 'MRT', '478', '222', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (142, 'Mauritius', 'MU', 'MUS', '480', '230', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (143, 'Mayotte Island', 'YT', 'MYT', '175', '269', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (144, 'Mexico', 'MX', 'MEX', '484', '052', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (145, 'Micronesia', 'FM', 'FSM', '583', '691', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (146, 'Moldova', 'MD', 'MDA', '498', '373', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (147, 'Monaco', 'MC', 'MCO', '492', '377', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (148, 'Mongolia', 'MN', 'MNG', '496', '976', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (149, 'Montenegro', 'ME', 'MNE', '499', '382', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (150, 'Montserrat', 'MS', 'MSR', '500', '664', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (151, 'Morocco', 'MA', 'MAR', '504', '212', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (152, 'Mozambique', 'MZ', 'MOZ', '508', '258', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (153, 'Namibia', 'NA', 'NAM', '516', '264', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (154, 'Nauru', 'NR', 'NRU', '520', '674', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (155, 'Nepal', 'NP', 'NPL', '524', '977', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (156, 'Netherlands Antilles', 'AN', 'ANT', '530', '599', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (157, 'New Caledonia', 'NC', 'NCL', '540', '687', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (158, 'New Zealand', 'NZ', 'NZL', '554', '064', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (159, 'Nicaragua', 'NI', 'NIC', '558', '505', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (160, 'Niger', 'NE', 'NER', '562', '227', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (161, 'Nigeria', 'NG', 'NGA', '566', '234', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (162, 'Niue', 'NU', 'NIU', '570', '683', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (163, 'Norfolk Island', 'NF', 'NFK', '574', '672', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (164, 'Norway', 'NO', 'NOR', '578', '047', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (165, 'Oman', 'OM', 'OMN', '512', '968', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (166, 'Pakistan', 'PK', 'PAK', '586', '092', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (167, 'Palau', 'PW', 'PLW', '585', '680', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (168, 'Palestine', 'PS', 'PSE', '275', '970', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (169, 'Panama', 'PA', 'PAN', '591', '507', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (170, 'Papua New Guinea', 'PG', 'PNG', '598', '675', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (171, 'Paraguay', 'PY', 'PRY', '600', '595', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (172, 'Peru', 'PE', 'PER', '604', '051', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (173, 'Philippines', 'PH', 'PHL', '608', '063', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (174, 'Poland', 'PL', 'POL', '616', '048', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (175, 'Puerto Rico', 'PR', 'PRI', '630', '787', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (176, 'Qatar', 'QA', 'QAT', '634', '974', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (177, 'Reunion Island', 'RE', 'REU', '638', '262', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (178, 'Romania', 'RO', 'ROU', '642', '040', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (179, 'Rwanda', 'RW', 'RWA', '646', '250', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (180, 'St. Helena', 'SH', 'SHN', '654', '290', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (181, 'St. Kitts', 'KN', 'KNA', '659', '869', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (182, 'St. Lucia', 'LC', 'LCA', '662', '758', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (183, 'St. Pierre & Miquelon', 'PM', 'SPM', '666', '508', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (184, 'St. Vincent', 'VC', 'VCT', '670', '784', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (185, 'San Marino', 'SM', 'SMR', '674', '378', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (186, 'Sao Tome & Principe', 'ST', 'STP', '678', '239', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (187, 'Saudi Arabia', 'SA', 'SAU', '682', '966', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (188, 'Senegal', 'SN', 'SEN', '686', '221', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (189, 'Serbia', 'RS', 'SRB', '688', '381', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (190, 'Seychelles', 'SC', 'SYC', '690', '248', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (191, 'Sierra Leone', 'SL', 'SLE', '694', '249', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (192, 'Slovakia', 'SK', 'SVK', '703', '421', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (193, 'Slovenia', 'SI', 'SVN', '705', '386', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (194, 'Solomon Islands', 'SB', 'SLB', '90', '677', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (195, 'Somalia', 'SO', 'SOM', '706', '252', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (196, 'South Africa', 'ZA', 'ZAF', '710', '027', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (197, 'Sri Lanka', 'LK', 'LKA', '144', '094', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (198, 'Sudan', 'SD', 'SDN', '736', '095', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (199, 'Suriname', 'SR', 'SUR', '740', '597', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (200, 'Swaziland', 'SZ', 'SWZ', '748', '268', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (201, 'Sweden', 'SE', 'SWE', '752', '046', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (202, 'Switzerland', 'CH', 'CHE', '756', '041', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (203, 'Syria', 'SY', 'SYR', '760', '963', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (204, 'Taiwan', 'TW', 'TWN', '158', '886', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (205, 'Tajikistan', 'TJ', 'TJK', '762', '992', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (206, 'Tanzania', 'TZ', 'TZA', '834', '255', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (207, 'Thailand', 'TH', 'THA', '764', '066', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (208, 'Togo', 'TG', 'TGO', '768', '228', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (209, 'Tonga', 'TO', 'TON', '776', '676', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (210, 'Trinidad & Tobago', 'TT', 'TTO', '780', '868', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (211, 'Tunisia', 'TN', 'TUN', '788', '216', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (212, 'Turkmenistan', 'TM', 'TKM', '795', '993', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (213, 'Turks & Caicos', 'TC', 'TCA', '796', '649', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (214, 'Tuvalu', 'TV', 'TUV', '798', '688', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (215, 'Uganda', 'UG', 'UGA', '800', '256', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (216, 'Ukraine', 'UA', 'UKR', '804', '380', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (217, 'United Arab Emirates', 'AE', 'ARE', '784', '971', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (218, 'Uruguay', 'UY', 'URY', '858', '598', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (219, 'Uzbekistan', 'UZ', 'UZB', '860', '998', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (220, 'Vanuatu', 'VU', 'VUT', '548', '678', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (221, 'Vatican City', 'VA', 'VAT', '336', '039', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (222, 'Venezuela', 'VE', 'VEN', '862', '058', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (223, 'Wallis & Futuna', 'WF', 'WLF', '876', '681', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (224, 'Western Samoa', 'EH', 'ESH', '732', '685', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (225, 'Yemen', 'YE', 'YEM', '887', '967', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (226, 'Zambia', 'ZM', 'ZMB', '894', '260', 1);
insert into Country (countryId, name, a2, a3, number_, idd_, active_) values (227, 'Zimbabwe', 'ZW', 'ZWE', '716', '263', 1);

insert into Region (regionId, countryId, regionCode, name, active_) values (1001, 1, 'AB', 'Alberta', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1002, 1, 'BC', 'British Columbia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1003, 1, 'MB', 'Manitoba', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1004, 1, 'NB', 'New Brunswick', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1005, 1, 'NL', 'Newfoundland and Labrador', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1006, 1, 'NT', 'Northwest Territories', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1007, 1, 'NS', 'Nova Scotia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1008, 1, 'NU', 'Nunavut', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1009, 1, 'ON', 'Ontario', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1010, 1, 'PE', 'Prince Edward Island', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1011, 1, 'QC', 'Quebec', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1012, 1, 'SK', 'Saskatchewan', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1013, 1, 'YT', 'Yukon', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2001, 2, 'CN-34', 'Anhui', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2002, 2, 'CN-92', 'Aomen', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2003, 2, 'CN-11', 'Beijing', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2004, 2, 'CN-50', 'Chongqing', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2005, 2, 'CN-35', 'Fujian', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2006, 2, 'CN-62', 'Gansu', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2007, 2, 'CN-44', 'Guangdong', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2008, 2, 'CN-45', 'Guangxi', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2009, 2, 'CN-52', 'Guizhou', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2010, 2, 'CN-46', 'Hainan', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2011, 2, 'CN-13', 'Hebei', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2012, 2, 'CN-23', 'Heilongjiang', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2013, 2, 'CN-41', 'Henan', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2014, 2, 'CN-42', 'Hubei', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2015, 2, 'CN-43', 'Hunan', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2016, 2, 'CN-32', 'Jiangsu', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2017, 2, 'CN-36', 'Jiangxi', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2018, 2, 'CN-22', 'Jilin', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2019, 2, 'CN-21', 'Liaoning', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2020, 2, 'CN-15', 'Nei Mongol', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2021, 2, 'CN-64', 'Ningxia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2022, 2, 'CN-63', 'Qinghai', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2023, 2, 'CN-61', 'Shaanxi', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2024, 2, 'CN-37', 'Shandong', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2025, 2, 'CN-31', 'Shanghai', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2026, 2, 'CN-14', 'Shanxi', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2027, 2, 'CN-51', 'Sichuan', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2028, 2, 'CN-71', 'Taiwan', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2029, 2, 'CN-12', 'Tianjin', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2030, 2, 'CN-91', 'Xianggang', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2031, 2, 'CN-65', 'Xinjiang', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2032, 2, 'CN-54', 'Xizang', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2033, 2, 'CN-53', 'Yunnan', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2034, 2, 'CN-33', 'Zhejiang', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3001, 3, 'A', 'Alsace', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3002, 3, 'B', 'Aquitaine', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3003, 3, 'C', 'Auvergne', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3004, 3, 'P', 'Basse-Normandie', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3005, 3, 'D', 'Bourgogne', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3006, 3, 'E', 'Bretagne', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3007, 3, 'F', 'Centre', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3008, 3, 'G', 'Champagne-Ardenne', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3009, 3, 'H', 'Corse', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3010, 3, 'GF', 'Guyane', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3011, 3, 'I', 'Franche Comté', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3012, 3, 'GP', 'Guadeloupe', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3013, 3, 'Q', 'Haute-Normandie', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3014, 3, 'J', 'Île-de-France', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3015, 3, 'K', 'Languedoc-Roussillon', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3016, 3, 'L', 'Limousin', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3017, 3, 'M', 'Lorraine', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3018, 3, 'MQ', 'Martinique', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3019, 3, 'N', 'Midi-Pyrénées', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3020, 3, 'O', 'Nord Pas de Calais', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3021, 3, 'R', 'Pays de la Loire', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3022, 3, 'S', 'Picardie', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3023, 3, 'T', 'Poitou-Charentes', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3024, 3, 'U', 'Provence-Alpes-Côte-d''Azur', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3025, 3, 'RE', 'Réunion', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3026, 3, 'V', 'Rhône-Alpes', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4001, 4, 'BW', 'Baden-Württemberg', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4002, 4, 'BY', 'Bayern', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4003, 4, 'BE', 'Berlin', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4004, 4, 'BR', 'Brandenburg', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4005, 4, 'HB', 'Bremen', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4006, 4, 'HH', 'Hamburg', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4007, 4, 'HE', 'Hessen', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4008, 4, 'MV', 'Mecklenburg-Vorpommern', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4009, 4, 'NI', 'Niedersachsen', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4010, 4, 'NW', 'Nordrhein-Westfalen', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4011, 4, 'RP', 'Rheinland-Pfalz', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4012, 4, 'SL', 'Saarland', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4013, 4, 'SN', 'Sachsen', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4014, 4, 'ST', 'Sachsen-Anhalt', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4015, 4, 'SH', 'Schleswig-Holstein', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4016, 4, 'TH', 'Thüringen', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8001, 8, 'AG', 'Agrigento', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8002, 8, 'AL', 'Alessandria', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8003, 8, 'AN', 'Ancona', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8004, 8, 'AO', 'Aosta', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8005, 8, 'AR', 'Arezzo', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8006, 8, 'AP', 'Ascoli Piceno', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8007, 8, 'AT', 'Asti', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8008, 8, 'AV', 'Avellino', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8009, 8, 'BA', 'Bari', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8010, 8, 'BT', 'Barletta-Andria-Trani', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8011, 8, 'BL', 'Belluno', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8012, 8, 'BN', 'Benevento', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8013, 8, 'BG', 'Bergamo', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8014, 8, 'BI', 'Biella', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8015, 8, 'BO', 'Bologna', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8016, 8, 'BZ', 'Bolzano', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8017, 8, 'BS', 'Brescia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8018, 8, 'BR', 'Brindisi', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8019, 8, 'CA', 'Cagliari', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8020, 8, 'CL', 'Caltanissetta', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8021, 8, 'CB', 'Campobasso', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8022, 8, 'CI', 'Carbonia-Iglesias', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8023, 8, 'CE', 'Caserta', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8024, 8, 'CT', 'Catania', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8025, 8, 'CZ', 'Catanzaro', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8026, 8, 'CH', 'Chieti', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8027, 8, 'CO', 'Como', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8028, 8, 'CS', 'Cosenza', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8029, 8, 'CR', 'Cremona', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8030, 8, 'KR', 'Crotone', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8031, 8, 'CN', 'Cuneo', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8032, 8, 'EN', 'Enna', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8033, 8, 'FM', 'Fermo', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8034, 8, 'FE', 'Ferrara', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8035, 8, 'FI', 'Firenze', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8036, 8, 'FG', 'Foggia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8037, 8, 'FC', 'Forli-Cesena', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8038, 8, 'FR', 'Frosinone', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8039, 8, 'GE', 'Genova', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8040, 8, 'GO', 'Gorizia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8041, 8, 'GR', 'Grosseto', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8042, 8, 'IM', 'Imperia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8043, 8, 'IS', 'Isernia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8044, 8, 'AQ', 'L''Aquila', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8045, 8, 'SP', 'La Spezia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8046, 8, 'LT', 'Latina', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8047, 8, 'LE', 'Lecce', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8048, 8, 'LC', 'Lecco', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8049, 8, 'LI', 'Livorno', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8050, 8, 'LO', 'Lodi', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8051, 8, 'LU', 'Lucca', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8052, 8, 'MC', 'Macerata', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8053, 8, 'MN', 'Mantova', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8054, 8, 'MS', 'Massa-Carrara', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8055, 8, 'MT', 'Matera', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8056, 8, 'MA', 'Medio Campidano', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8057, 8, 'ME', 'Messina', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8058, 8, 'MI', 'Milano', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8059, 8, 'MO', 'Modena', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8060, 8, 'MZ', 'Monza', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8061, 8, 'NA', 'Napoli', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8062, 8, 'NO', 'Novara', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8063, 8, 'NU', 'Nuoro', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8064, 8, 'OG', 'Ogliastra', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8065, 8, 'OT', 'Olbia-Tempio', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8066, 8, 'OR', 'Oristano', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8067, 8, 'PD', 'Padova', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8068, 8, 'PA', 'Palermo', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8069, 8, 'PR', 'Parma', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8070, 8, 'PV', 'Pavia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8071, 8, 'PG', 'Perugia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8072, 8, 'PU', 'Pesaro e Urbino', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8073, 8, 'PE', 'Pescara', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8074, 8, 'PC', 'Piacenza', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8075, 8, 'PI', 'Pisa', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8076, 8, 'PT', 'Pistoia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8077, 8, 'PN', 'Pordenone', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8078, 8, 'PZ', 'Potenza', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8079, 8, 'PO', 'Prato', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8080, 8, 'RG', 'Ragusa', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8081, 8, 'RA', 'Ravenna', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8082, 8, 'RC', 'Reggio Calabria', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8083, 8, 'RE', 'Reggio Emilia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8084, 8, 'RI', 'Rieti', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8085, 8, 'RN', 'Rimini', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8086, 8, 'RM', 'Roma', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8087, 8, 'RO', 'Rovigo', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8088, 8, 'SA', 'Salerno', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8089, 8, 'SS', 'Sassari', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8090, 8, 'SV', 'Savona', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8091, 8, 'SI', 'Siena', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8092, 8, 'SR', 'Siracusa', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8093, 8, 'SO', 'Sondrio', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8094, 8, 'TA', 'Taranto', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8095, 8, 'TE', 'Teramo', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8096, 8, 'TR', 'Terni', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8097, 8, 'TO', 'Torino', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8098, 8, 'TP', 'Trapani', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8099, 8, 'TN', 'Trento', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8100, 8, 'TV', 'Treviso', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8101, 8, 'TS', 'Trieste', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8102, 8, 'UD', 'Udine', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8103, 8, 'VA', 'Varese', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8104, 8, 'VE', 'Venezia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8105, 8, 'VB', 'Verbano-Cusio-Ossola', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8106, 8, 'VC', 'Vercelli', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8107, 8, 'VR', 'Verona', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8108, 8, 'VV', 'Vibo Valentia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8109, 8, 'VI', 'Vicenza', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8110, 8, 'VT', 'Viterbo', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11001, 11, 'DR', 'Drenthe', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11002, 11, 'FL', 'Flevoland', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11003, 11, 'FR', 'Friesland', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11004, 11, 'GE', 'Gelderland', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11005, 11, 'GR', 'Groningen', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11006, 11, 'LI', 'Limburg', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11007, 11, 'NB', 'Noord-Brabant', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11008, 11, 'NH', 'Noord-Holland', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11009, 11, 'OV', 'Overijssel', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11010, 11, 'UT', 'Utrecht', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11011, 11, 'ZE', 'Zeeland', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11012, 11, 'ZH', 'Zuid-Holland', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15001, 15, 'AN', 'Andalusia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15002, 15, 'AR', 'Aragon', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15003, 15, 'AS', 'Asturias', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15004, 15, 'IB', 'Balearic Islands', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15005, 15, 'PV', 'Basque Country', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15006, 15, 'CN', 'Canary Islands', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15007, 15, 'CB', 'Cantabria', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15008, 15, 'CL', 'Castile and Leon', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15009, 15, 'CM', 'Castile-La Mancha', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15010, 15, 'CT', 'Catalonia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15011, 15, 'CE', 'Ceuta', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15012, 15, 'EX', 'Extremadura', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15013, 15, 'GA', 'Galicia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15014, 15, 'LO', 'La Rioja', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15015, 15, 'M', 'Madrid', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15016, 15, 'ML', 'Melilla', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15017, 15, 'MU', 'Murcia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15018, 15, 'NA', 'Navarra', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15019, 15, 'VC', 'Valencia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19001, 19, 'AL', 'Alabama', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19002, 19, 'AK', 'Alaska', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19003, 19, 'AZ', 'Arizona', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19004, 19, 'AR', 'Arkansas', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19005, 19, 'CA', 'California', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19006, 19, 'CO', 'Colorado', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19007, 19, 'CT', 'Connecticut', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19008, 19, 'DC', 'District of Columbia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19009, 19, 'DE', 'Delaware', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19010, 19, 'FL', 'Florida', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19011, 19, 'GA', 'Georgia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19012, 19, 'HI', 'Hawaii', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19013, 19, 'ID', 'Idaho', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19014, 19, 'IL', 'Illinois', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19015, 19, 'IN', 'Indiana', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19016, 19, 'IA', 'Iowa', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19017, 19, 'KS', 'Kansas', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19018, 19, 'KY', 'Kentucky ', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19019, 19, 'LA', 'Louisiana ', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19020, 19, 'ME', 'Maine', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19021, 19, 'MD', 'Maryland', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19022, 19, 'MA', 'Massachusetts', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19023, 19, 'MI', 'Michigan', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19024, 19, 'MN', 'Minnesota', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19025, 19, 'MS', 'Mississippi', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19026, 19, 'MO', 'Missouri', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19027, 19, 'MT', 'Montana', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19028, 19, 'NE', 'Nebraska', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19029, 19, 'NV', 'Nevada', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19030, 19, 'NH', 'New Hampshire', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19031, 19, 'NJ', 'New Jersey', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19032, 19, 'NM', 'New Mexico', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19033, 19, 'NY', 'New York', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19034, 19, 'NC', 'North Carolina', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19035, 19, 'ND', 'North Dakota', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19036, 19, 'OH', 'Ohio', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19037, 19, 'OK', 'Oklahoma ', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19038, 19, 'OR', 'Oregon', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19039, 19, 'PA', 'Pennsylvania', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19040, 19, 'PR', 'Puerto Rico', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19041, 19, 'RI', 'Rhode Island', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19042, 19, 'SC', 'South Carolina', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19043, 19, 'SD', 'South Dakota', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19044, 19, 'TN', 'Tennessee', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19045, 19, 'TX', 'Texas', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19046, 19, 'UT', 'Utah', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19047, 19, 'VT', 'Vermont', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19048, 19, 'VA', 'Virginia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19049, 19, 'WA', 'Washington', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19050, 19, 'WV', 'West Virginia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19051, 19, 'WI', 'Wisconsin', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19052, 19, 'WY', 'Wyoming', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (32001, 32, 'ACT', 'Australian Capital Territory', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (32002, 32, 'NSW', 'New South Wales', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (32003, 32, 'NT', 'Northern Territory', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (32004, 32, 'QLD', 'Queensland', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (32005, 32, 'SA', 'South Australia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (32006, 32, 'TAS', 'Tasmania', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (32007, 32, 'VIC', 'Victoria', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (32008, 32, 'WA', 'Western Australia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202001, 202, 'AG', 'Aargau', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202002, 202, 'AR', 'Appenzell Ausserrhoden', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202003, 202, 'AI', 'Appenzell Innerrhoden', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202004, 202, 'BL', 'Basel-Landschaft', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202005, 202, 'BS', 'Basel-Stadt', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202006, 202, 'BE', 'Bern', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202007, 202, 'FR', 'Fribourg', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202008, 202, 'GE', 'Geneva', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202009, 202, 'GL', 'Glarus', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202010, 202, 'GR', 'Graubünden', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202011, 202, 'JU', 'Jura', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202012, 202, 'LU', 'Lucerne', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202013, 202, 'NE', 'Neuchâtel', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202014, 202, 'NW', 'Nidwalden', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202015, 202, 'OW', 'Obwalden', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202016, 202, 'SH', 'Schaffhausen', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202017, 202, 'SZ', 'Schwyz', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202018, 202, 'SO', 'Solothurn', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202019, 202, 'SG', 'St. Gallen', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202020, 202, 'TG', 'Thurgau', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202021, 202, 'TI', 'Ticino', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202022, 202, 'UR', 'Uri', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202023, 202, 'VS', 'Valais', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202024, 202, 'VD', 'Vaud', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202025, 202, 'ZG', 'Zug', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202026, 202, 'ZH', 'Zürich', 1);

--
-- List types for accounts
--

insert into ListType (listTypeId, name, type_) values (10000, 'billing', 'com.liferay.portal.model.Account.address');
insert into ListType (listTypeId, name, type_) values (10001, 'other', 'com.liferay.portal.model.Account.address');
insert into ListType (listTypeId, name, type_) values (10002, 'p-o-box', 'com.liferay.portal.model.Account.address');
insert into ListType (listTypeId, name, type_) values (10003, 'shipping', 'com.liferay.portal.model.Account.address');

insert into ListType (listTypeId, name, type_) values (10004, 'email-address', 'com.liferay.portal.model.Account.emailAddress');
insert into ListType (listTypeId, name, type_) values (10005, 'email-address-2', 'com.liferay.portal.model.Account.emailAddress');
insert into ListType (listTypeId, name, type_) values (10006, 'email-address-3', 'com.liferay.portal.model.Account.emailAddress');

insert into ListType (listTypeId, name, type_) values (10007, 'fax', 'com.liferay.portal.model.Account.phone');
insert into ListType (listTypeId, name, type_) values (10008, 'local', 'com.liferay.portal.model.Account.phone');
insert into ListType (listTypeId, name, type_) values (10009, 'other', 'com.liferay.portal.model.Account.phone');
insert into ListType (listTypeId, name, type_) values (10010, 'toll-free', 'com.liferay.portal.model.Account.phone');
insert into ListType (listTypeId, name, type_) values (10011, 'tty', 'com.liferay.portal.model.Account.phone');

insert into ListType (listTypeId, name, type_) values (10012, 'intranet', 'com.liferay.portal.model.Account.website');
insert into ListType (listTypeId, name, type_) values (10013, 'public', 'com.liferay.portal.model.Account.website');

--
-- List types for contacts
--

insert into ListType (listTypeId, name, type_) values (11000, 'business', 'com.liferay.portal.model.Contact.address');
insert into ListType (listTypeId, name, type_) values (11001, 'other', 'com.liferay.portal.model.Contact.address');
insert into ListType (listTypeId, name, type_) values (11002, 'personal', 'com.liferay.portal.model.Contact.address');

insert into ListType (listTypeId, name, type_) values (11003, 'email-address', 'com.liferay.portal.model.Contact.emailAddress');
insert into ListType (listTypeId, name, type_) values (11004, 'email-address-2', 'com.liferay.portal.model.Contact.emailAddress');
insert into ListType (listTypeId, name, type_) values (11005, 'email-address-3', 'com.liferay.portal.model.Contact.emailAddress');

insert into ListType (listTypeId, name, type_) values (11006, 'business', 'com.liferay.portal.model.Contact.phone');
insert into ListType (listTypeId, name, type_) values (11007, 'business-fax', 'com.liferay.portal.model.Contact.phone');
insert into ListType (listTypeId, name, type_) values (11008, 'mobile-phone', 'com.liferay.portal.model.Contact.phone');
insert into ListType (listTypeId, name, type_) values (11009, 'other', 'com.liferay.portal.model.Contact.phone');
insert into ListType (listTypeId, name, type_) values (11010, 'pager', 'com.liferay.portal.model.Contact.phone');
insert into ListType (listTypeId, name, type_) values (11011, 'personal', 'com.liferay.portal.model.Contact.phone');
insert into ListType (listTypeId, name, type_) values (11012, 'personal-fax', 'com.liferay.portal.model.Contact.phone');
insert into ListType (listTypeId, name, type_) values (11013, 'tty', 'com.liferay.portal.model.Contact.phone');

insert into ListType (listTypeId, name, type_) values (11014, 'dr', 'com.liferay.portal.model.Contact.prefix');
insert into ListType (listTypeId, name, type_) values (11015, 'mr', 'com.liferay.portal.model.Contact.prefix');
insert into ListType (listTypeId, name, type_) values (11016, 'mrs', 'com.liferay.portal.model.Contact.prefix');
insert into ListType (listTypeId, name, type_) values (11017, 'ms', 'com.liferay.portal.model.Contact.prefix');

insert into ListType (listTypeId, name, type_) values (11020, 'ii', 'com.liferay.portal.model.Contact.suffix');
insert into ListType (listTypeId, name, type_) values (11021, 'iii', 'com.liferay.portal.model.Contact.suffix');
insert into ListType (listTypeId, name, type_) values (11022, 'iv', 'com.liferay.portal.model.Contact.suffix');
insert into ListType (listTypeId, name, type_) values (11023, 'jr', 'com.liferay.portal.model.Contact.suffix');
insert into ListType (listTypeId, name, type_) values (11024, 'phd', 'com.liferay.portal.model.Contact.suffix');
insert into ListType (listTypeId, name, type_) values (11025, 'sr', 'com.liferay.portal.model.Contact.suffix');

insert into ListType (listTypeId, name, type_) values (11026, 'blog', 'com.liferay.portal.model.Contact.website');
insert into ListType (listTypeId, name, type_) values (11027, 'business', 'com.liferay.portal.model.Contact.website');
insert into ListType (listTypeId, name, type_) values (11028, 'other', 'com.liferay.portal.model.Contact.website');
insert into ListType (listTypeId, name, type_) values (11029, 'personal', 'com.liferay.portal.model.Contact.website');

--
-- List types for organizations
--

insert into ListType (listTypeId, name, type_) values (12000, 'billing', 'com.liferay.portal.model.Organization.address');
insert into ListType (listTypeId, name, type_) values (12001, 'other', 'com.liferay.portal.model.Organization.address');
insert into ListType (listTypeId, name, type_) values (12002, 'p-o-box', 'com.liferay.portal.model.Organization.address');
insert into ListType (listTypeId, name, type_) values (12003, 'shipping', 'com.liferay.portal.model.Organization.address');

insert into ListType (listTypeId, name, type_) values (12004, 'email-address', 'com.liferay.portal.model.Organization.emailAddress');
insert into ListType (listTypeId, name, type_) values (12005, 'email-address-2', 'com.liferay.portal.model.Organization.emailAddress');
insert into ListType (listTypeId, name, type_) values (12006, 'email-address-3', 'com.liferay.portal.model.Organization.emailAddress');

insert into ListType (listTypeId, name, type_) values (12007, 'fax', 'com.liferay.portal.model.Organization.phone');
insert into ListType (listTypeId, name, type_) values (12008, 'local', 'com.liferay.portal.model.Organization.phone');
insert into ListType (listTypeId, name, type_) values (12009, 'other', 'com.liferay.portal.model.Organization.phone');
insert into ListType (listTypeId, name, type_) values (12010, 'toll-free', 'com.liferay.portal.model.Organization.phone');
insert into ListType (listTypeId, name, type_) values (12011, 'tty', 'com.liferay.portal.model.Organization.phone');

insert into ListType (listTypeId, name, type_) values (12012, 'administrative', 'com.liferay.portal.model.Organization.service');
insert into ListType (listTypeId, name, type_) values (12013, 'contracts', 'com.liferay.portal.model.Organization.service');
insert into ListType (listTypeId, name, type_) values (12014, 'donation', 'com.liferay.portal.model.Organization.service');
insert into ListType (listTypeId, name, type_) values (12015, 'retail', 'com.liferay.portal.model.Organization.service');
insert into ListType (listTypeId, name, type_) values (12016, 'training', 'com.liferay.portal.model.Organization.service');

insert into ListType (listTypeId, name, type_) values (12017, 'full-member', 'com.liferay.portal.model.Organization.status');
insert into ListType (listTypeId, name, type_) values (12018, 'provisional-member', 'com.liferay.portal.model.Organization.status');

insert into ListType (listTypeId, name, type_) values (12019, 'intranet', 'com.liferay.portal.model.Organization.website');
insert into ListType (listTypeId, name, type_) values (12020, 'public', 'com.liferay.portal.model.Organization.website');



insert into Counter values ('com.liferay.counter.model.Counter', 10000);






insert into Company (companyId, accountId, webId, mx) values (1, 7, 'liferay.com', 'liferay.com');
insert into Account_ (accountId, companyId, userId, userName, createDate, modifiedDate, parentAccountId, name, legalName, legalId, legalType, sicCode, tickerSymbol, industry, type_, size_) values (7, 1, 5, '', sysdate, sysdate, 0, 'Liferay', 'Liferay, Inc.', '', '', '', '', '', '', '');
insert into VirtualHost (virtualHostId, companyId, layoutSetId, hostname) values (8, 1, 0, 'localhost');


insert into ClassName_ (classNameId, value) values (9, 'com.liferay.portal.model.Company');
insert into ClassName_ (classNameId, value) values (10, 'com.liferay.portal.model.Group');
insert into ClassName_ (classNameId, value) values (11, 'com.liferay.portal.model.Organization');
insert into ClassName_ (classNameId, value) values (12, 'com.liferay.portal.model.Role');
insert into ClassName_ (classNameId, value) values (13, 'com.liferay.portal.model.User');

insert into Shard (shardId, classNameId, classPK, name) values (14, 9, 1, 'default');


insert into Role_ (roleId, companyId, classNameId, classPK, name, description, type_) values (15, 1, 12, 15, 'Administrator', '', 1);
insert into Role_ (roleId, companyId, classNameId, classPK, name, description, type_) values (16, 1, 12, 16, 'Guest', '', 1);
insert into Role_ (roleId, companyId, classNameId, classPK, name, description, type_) values (17, 1, 12, 17, 'Power User', '', 1);
insert into Role_ (roleId, companyId, classNameId, classPK, name, description, type_) values (18, 1, 12, 18, 'User', '', 1);


insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (19, 1, 5, 10, 19, 0, 0, 'Guest', 1, '/guest', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (20, 1, 19, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (21, 1, 19, 0, 0, 'classic', '01', 0);


insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (22, 1, 0, 'Liferay, Inc.', 'regular-organization', 1, 19005, 19, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (23, 1, 5, 11, 22, 0, 0, '23', 0, '/23', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (24, 1, 23, 1, 0, 'classic', '01', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (25, 1, 23, 0, 0, 'classic', '01', 1);
insert into Layout (plid, groupId, companyId, privateLayout, layoutId, parentLayoutId, name, type_, typeSettings, hidden_, friendlyURL, priority) values (26, 23, 1, 0, 1, 0, '<?xml version="1.0"?>'||CHR(10)||''||CHR(10)||'<root>'||CHR(10)||'  <name>Liferay, Inc. Extranet</name>'||CHR(10)||'</root>', 'portlet', 'layout-template-id=2_columns_ii'||CHR(10)||'column-1=3,'||CHR(10)||'column-2=19,', 0, '/1', 0);
insert into Layout (plid, groupId, companyId, privateLayout, layoutId, parentLayoutId, name, type_, typeSettings, hidden_, friendlyURL, priority) values (27, 23, 1, 1, 1, 0, '<?xml version="1.0"?>'||CHR(10)||''||CHR(10)||'<root>'||CHR(10)||'  <name>Liferay, Inc. Intranet</name>'||CHR(10)||'</root>', 'portlet', 'layout-template-id=2_columns_ii'||CHR(10)||'column-1=3,'||CHR(10)||'column-2=19,', 0, '/1', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (28, 1, 22, 'Liferay Engineering', 'regular-organization', 1, 19005, 19, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (29, 1, 5, 11, 28, 0, 0, '29', 0, '/29', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (30, 1, 29, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (31, 1, 29, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (32, 1, 22, 'Liferay Consulting', 'regular-organization', 1, 19005, 19, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (33, 1, 5, 11, 32, 0, 0, '33', 0, '/33', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (34, 1, 33, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (35, 1, 33, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (36, 1, 22, 'Liferay Support', 'regular-organization', 1, 19005, 19, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (37, 1, 5, 11, 36, 0, 0, '37', 0, '/37', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (38, 1, 37, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (39, 1, 37, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (40, 1, 22, 'Liferay Sales', 'regular-organization', 1, 19005, 19, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (41, 1, 5, 11, 40, 0, 0, '41', 0, '/41', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (42, 1, 41, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (43, 1, 41, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (44, 1, 22, 'Liferay Marketing', 'regular-organization', 1, 19005, 19, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (45, 1, 5, 11, 44, 0, 0, '45', 0, '/45', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (46, 1, 45, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (47, 1, 45, 0, 0, 'classic', '01', 0);


insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (48, 1, 22, 'Liferay Los Angeles', 'location', 0, 19005, 19, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (49, 1, 5, 11, 48, 0, 0, '49', 0, '/49', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (50, 1, 49, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (51, 1, 49, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (52, 1, 22, 'Liferay San Francisco', 'location', 0, 19005, 19, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (53, 1, 5, 11, 52, 0, 0, '53', 0, '/53', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (54, 1, 53, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (55, 1, 53, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (56, 1, 22, 'Liferay Chicago', 'location', 0, 19014, 19, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (57, 1, 5, 11, 56, 0, 0, '57', 0, '/57', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (58, 1, 57, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (59, 1, 57, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (60, 1, 22, 'Liferay New York', 'location', 0, 19033, 19, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (61, 1, 5, 11, 60, 0, 0, '61', 0, '/61', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (62, 1, 61, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (63, 1, 61, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (64, 1, 22, 'Liferay Sao Paulo', 'location', 0, 0, 48, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (65, 1, 5, 11, 64, 0, 0, '65', 0, '/65', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (66, 1, 65, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (67, 1, 65, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (68, 1, 22, 'Liferay Frankfurt', 'location', 0, 0, 4, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (69, 1, 5, 11, 68, 0, 0, '69', 0, '/69', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (70, 1, 69, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (71, 1, 69, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (72, 1, 22, 'Liferay Madrid', 'location', 0, 0, 15, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (73, 1, 5, 11, 72, 0, 0, '73', 0, '/73', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (74, 1, 73, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (75, 1, 73, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (76, 1, 22, 'Liferay Dalian', 'location', 0, 0, 2, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (77, 1, 5, 11, 76, 0, 0, '77', 0, '/77', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (78, 1, 77, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (79, 1, 77, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (80, 1, 22, 'Liferay Hong Kong', 'location', 0, 0, 2, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (81, 1, 5, 11, 80, 0, 0, '81', 0, '/81', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (82, 1, 81, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (83, 1, 81, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (84, 1, 22, 'Liferay Kuala Lumpur', 'location', 0, 0, 135, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (85, 1, 5, 11, 84, 0, 0, '85', 0, '/85', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (86, 1, 85, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (87, 1, 85, 0, 0, 'classic', '01', 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (5, 1, sysdate, sysdate, 1, 6, 'password', 0, 0, '5', 'default@liferay.com', 'Welcome!', '', '', '', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (6, 1, 5, '', sysdate, sysdate, 7, 0, '', '', '', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (2, 1, sysdate, sysdate, 0, 3, 'test', 0, 0, 'joebloggs', 'test@liferay.com', 'Welcome Joe Bloggs!', 'Joe', '', 'Bloggs', sysdate, 0, 0, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (3, 1, 2, 'Joe Bloggs', sysdate, sysdate, 7, 0, 'Joe', '', 'Bloggs', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (88, 1, 2, 13, 2, 0, 0, '88', 0, '/joebloggs', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (89, 1, 88, 1, 0, 'classic', '01', 2);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (90, 1, 88, 0, 0, 'classic', '01', 0);
insert into Layout (plid, groupId, companyId, privateLayout, layoutId, parentLayoutId, name, type_, typeSettings, hidden_, friendlyURL, priority) values (91, 88, 1, 1, 1, 0, '<?xml version="1.0"?>'||CHR(10)||''||CHR(10)||'<root>'||CHR(10)||'  <name>Home</name>'||CHR(10)||'</root>', 'portlet', 'column-1=71_INSTANCE_OY0d,82,23,61,'||CHR(10)||'column-2=9,79,29,8,19,'||CHR(10)||'layout-template-id=2_columns_ii'||CHR(10)||'', 0, '/home', 0);
insert into Layout (plid, groupId, companyId, privateLayout, layoutId, parentLayoutId, name, type_, typeSettings, hidden_, friendlyURL, priority) values (92, 88, 1, 1, 2, 0, '<?xml version="1.0"?>'||CHR(10)||''||CHR(10)||'<root>'||CHR(10)||'  <name>Plugins</name>'||CHR(10)||'</root>', 'portlet', 'column-1='||CHR(10)||'column-2=111,'||CHR(10)||'layout-template-id=2_columns_ii'||CHR(10)||'', 0, '/plugins', 1);

insert into Users_Groups values (2, 19);

insert into Users_Orgs (userId, organizationId) values (2, 22);
insert into Users_Orgs (userId, organizationId) values (2, 48);

insert into Users_Roles values (2, 15);
insert into Users_Roles values (2, 17);
insert into Users_Roles values (2, 18);


insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (93, 1, sysdate, sysdate, 0, 94, 'test', 0, 0, 'lax1', 'test.lax.1@liferay.com', 'Welcome Test LAX 1!', 'Test', '', 'LAX 1', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (94, 1, 2, 'Test LAX 1', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 1', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (95, 1, 93, 13, 93, 0, 0, '95', 0, '/lax1', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (96, 1, 95, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (97, 1, 95, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (93, 19);

insert into Users_Orgs (userId, organizationId) values (93, 22);
insert into Users_Orgs (userId, organizationId) values (93, 48);

insert into Users_Roles values (93, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (98, 1, sysdate, sysdate, 0, 99, 'test', 0, 0, 'lax2', 'test.lax.2@liferay.com', 'Welcome Test LAX 2!', 'Test', '', 'LAX 2', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (99, 1, 2, 'Test LAX 2', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 2', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (100, 1, 98, 13, 98, 0, 0, '100', 0, '/lax2', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (101, 1, 100, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (102, 1, 100, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (98, 19);

insert into Users_Orgs (userId, organizationId) values (98, 22);
insert into Users_Orgs (userId, organizationId) values (98, 48);

insert into Users_Roles values (98, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (103, 1, sysdate, sysdate, 0, 104, 'test', 0, 0, 'lax3', 'test.lax.3@liferay.com', 'Welcome Test LAX 3!', 'Test', '', 'LAX 3', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (104, 1, 2, 'Test LAX 3', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 3', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (105, 1, 103, 13, 103, 0, 0, '105', 0, '/lax3', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (106, 1, 105, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (107, 1, 105, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (103, 19);

insert into Users_Orgs (userId, organizationId) values (103, 22);
insert into Users_Orgs (userId, organizationId) values (103, 48);

insert into Users_Roles values (103, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (108, 1, sysdate, sysdate, 0, 109, 'test', 0, 0, 'lax4', 'test.lax.4@liferay.com', 'Welcome Test LAX 4!', 'Test', '', 'LAX 4', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (109, 1, 2, 'Test LAX 4', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 4', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (110, 1, 108, 13, 108, 0, 0, '110', 0, '/lax4', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (111, 1, 110, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (112, 1, 110, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (108, 19);

insert into Users_Orgs (userId, organizationId) values (108, 22);
insert into Users_Orgs (userId, organizationId) values (108, 48);

insert into Users_Roles values (108, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (113, 1, sysdate, sysdate, 0, 114, 'test', 0, 0, 'lax5', 'test.lax.5@liferay.com', 'Welcome Test LAX 5!', 'Test', '', 'LAX 5', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (114, 1, 2, 'Test LAX 5', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 5', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (115, 1, 113, 13, 113, 0, 0, '115', 0, '/lax5', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (116, 1, 115, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (117, 1, 115, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (113, 19);

insert into Users_Orgs (userId, organizationId) values (113, 22);
insert into Users_Orgs (userId, organizationId) values (113, 48);

insert into Users_Roles values (113, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (118, 1, sysdate, sysdate, 0, 119, 'test', 0, 0, 'lax6', 'test.lax.6@liferay.com', 'Welcome Test LAX 6!', 'Test', '', 'LAX 6', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (119, 1, 2, 'Test LAX 6', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 6', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (120, 1, 118, 13, 118, 0, 0, '120', 0, '/lax6', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (121, 1, 120, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (122, 1, 120, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (118, 19);

insert into Users_Orgs (userId, organizationId) values (118, 22);
insert into Users_Orgs (userId, organizationId) values (118, 48);

insert into Users_Roles values (118, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (123, 1, sysdate, sysdate, 0, 124, 'test', 0, 0, 'lax7', 'test.lax.7@liferay.com', 'Welcome Test LAX 7!', 'Test', '', 'LAX 7', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (124, 1, 2, 'Test LAX 7', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 7', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (125, 1, 123, 13, 123, 0, 0, '125', 0, '/lax7', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (126, 1, 125, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (127, 1, 125, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (123, 19);

insert into Users_Orgs (userId, organizationId) values (123, 22);
insert into Users_Orgs (userId, organizationId) values (123, 48);

insert into Users_Roles values (123, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (128, 1, sysdate, sysdate, 0, 129, 'test', 0, 0, 'lax8', 'test.lax.8@liferay.com', 'Welcome Test LAX 8!', 'Test', '', 'LAX 8', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (129, 1, 2, 'Test LAX 8', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 8', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (130, 1, 128, 13, 128, 0, 0, '130', 0, '/lax8', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (131, 1, 130, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (132, 1, 130, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (128, 19);

insert into Users_Orgs (userId, organizationId) values (128, 22);
insert into Users_Orgs (userId, organizationId) values (128, 48);

insert into Users_Roles values (128, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (133, 1, sysdate, sysdate, 0, 134, 'test', 0, 0, 'lax9', 'test.lax.9@liferay.com', 'Welcome Test LAX 9!', 'Test', '', 'LAX 9', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (134, 1, 2, 'Test LAX 9', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 9', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (135, 1, 133, 13, 133, 0, 0, '135', 0, '/lax9', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (136, 1, 135, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (137, 1, 135, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (133, 19);

insert into Users_Orgs (userId, organizationId) values (133, 22);
insert into Users_Orgs (userId, organizationId) values (133, 48);

insert into Users_Roles values (133, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (138, 1, sysdate, sysdate, 0, 139, 'test', 0, 0, 'lax10', 'test.lax.10@liferay.com', 'Welcome Test LAX 10!', 'Test', '', 'LAX 10', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (139, 1, 2, 'Test LAX 10', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 10', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (140, 1, 138, 13, 138, 0, 0, '140', 0, '/lax10', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (141, 1, 140, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (142, 1, 140, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (138, 19);

insert into Users_Orgs (userId, organizationId) values (138, 22);
insert into Users_Orgs (userId, organizationId) values (138, 48);

insert into Users_Roles values (138, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (143, 1, sysdate, sysdate, 0, 144, 'test', 0, 0, 'lax11', 'test.lax.11@liferay.com', 'Welcome Test LAX 11!', 'Test', '', 'LAX 11', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (144, 1, 2, 'Test LAX 11', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 11', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (145, 1, 143, 13, 143, 0, 0, '145', 0, '/lax11', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (146, 1, 145, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (147, 1, 145, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (143, 19);

insert into Users_Orgs (userId, organizationId) values (143, 22);
insert into Users_Orgs (userId, organizationId) values (143, 48);

insert into Users_Roles values (143, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (148, 1, sysdate, sysdate, 0, 149, 'test', 0, 0, 'lax12', 'test.lax.12@liferay.com', 'Welcome Test LAX 12!', 'Test', '', 'LAX 12', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (149, 1, 2, 'Test LAX 12', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 12', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (150, 1, 148, 13, 148, 0, 0, '150', 0, '/lax12', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (151, 1, 150, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (152, 1, 150, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (148, 19);

insert into Users_Orgs (userId, organizationId) values (148, 22);
insert into Users_Orgs (userId, organizationId) values (148, 48);

insert into Users_Roles values (148, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (153, 1, sysdate, sysdate, 0, 154, 'test', 0, 0, 'lax13', 'test.lax.13@liferay.com', 'Welcome Test LAX 13!', 'Test', '', 'LAX 13', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (154, 1, 2, 'Test LAX 13', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 13', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (155, 1, 153, 13, 153, 0, 0, '155', 0, '/lax13', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (156, 1, 155, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (157, 1, 155, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (153, 19);

insert into Users_Orgs (userId, organizationId) values (153, 22);
insert into Users_Orgs (userId, organizationId) values (153, 48);

insert into Users_Roles values (153, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (158, 1, sysdate, sysdate, 0, 159, 'test', 0, 0, 'lax14', 'test.lax.14@liferay.com', 'Welcome Test LAX 14!', 'Test', '', 'LAX 14', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (159, 1, 2, 'Test LAX 14', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 14', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (160, 1, 158, 13, 158, 0, 0, '160', 0, '/lax14', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (161, 1, 160, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (162, 1, 160, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (158, 19);

insert into Users_Orgs (userId, organizationId) values (158, 22);
insert into Users_Orgs (userId, organizationId) values (158, 48);

insert into Users_Roles values (158, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (163, 1, sysdate, sysdate, 0, 164, 'test', 0, 0, 'lax15', 'test.lax.15@liferay.com', 'Welcome Test LAX 15!', 'Test', '', 'LAX 15', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (164, 1, 2, 'Test LAX 15', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 15', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (165, 1, 163, 13, 163, 0, 0, '165', 0, '/lax15', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (166, 1, 165, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (167, 1, 165, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (163, 19);

insert into Users_Orgs (userId, organizationId) values (163, 22);
insert into Users_Orgs (userId, organizationId) values (163, 48);

insert into Users_Roles values (163, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (168, 1, sysdate, sysdate, 0, 169, 'test', 0, 0, 'lax16', 'test.lax.16@liferay.com', 'Welcome Test LAX 16!', 'Test', '', 'LAX 16', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (169, 1, 2, 'Test LAX 16', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 16', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (170, 1, 168, 13, 168, 0, 0, '170', 0, '/lax16', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (171, 1, 170, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (172, 1, 170, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (168, 19);

insert into Users_Orgs (userId, organizationId) values (168, 22);
insert into Users_Orgs (userId, organizationId) values (168, 48);

insert into Users_Roles values (168, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (173, 1, sysdate, sysdate, 0, 174, 'test', 0, 0, 'lax17', 'test.lax.17@liferay.com', 'Welcome Test LAX 17!', 'Test', '', 'LAX 17', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (174, 1, 2, 'Test LAX 17', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 17', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (175, 1, 173, 13, 173, 0, 0, '175', 0, '/lax17', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (176, 1, 175, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (177, 1, 175, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (173, 19);

insert into Users_Orgs (userId, organizationId) values (173, 22);
insert into Users_Orgs (userId, organizationId) values (173, 48);

insert into Users_Roles values (173, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (178, 1, sysdate, sysdate, 0, 179, 'test', 0, 0, 'lax18', 'test.lax.18@liferay.com', 'Welcome Test LAX 18!', 'Test', '', 'LAX 18', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (179, 1, 2, 'Test LAX 18', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 18', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (180, 1, 178, 13, 178, 0, 0, '180', 0, '/lax18', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (181, 1, 180, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (182, 1, 180, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (178, 19);

insert into Users_Orgs (userId, organizationId) values (178, 22);
insert into Users_Orgs (userId, organizationId) values (178, 48);

insert into Users_Roles values (178, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (183, 1, sysdate, sysdate, 0, 184, 'test', 0, 0, 'lax19', 'test.lax.19@liferay.com', 'Welcome Test LAX 19!', 'Test', '', 'LAX 19', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (184, 1, 2, 'Test LAX 19', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 19', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (185, 1, 183, 13, 183, 0, 0, '185', 0, '/lax19', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (186, 1, 185, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (187, 1, 185, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (183, 19);

insert into Users_Orgs (userId, organizationId) values (183, 22);
insert into Users_Orgs (userId, organizationId) values (183, 48);

insert into Users_Roles values (183, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (188, 1, sysdate, sysdate, 0, 189, 'test', 0, 0, 'lax20', 'test.lax.20@liferay.com', 'Welcome Test LAX 20!', 'Test', '', 'LAX 20', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (189, 1, 2, 'Test LAX 20', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 20', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (190, 1, 188, 13, 188, 0, 0, '190', 0, '/lax20', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (191, 1, 190, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (192, 1, 190, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (188, 19);

insert into Users_Orgs (userId, organizationId) values (188, 22);
insert into Users_Orgs (userId, organizationId) values (188, 48);

insert into Users_Roles values (188, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (193, 1, sysdate, sysdate, 0, 194, 'test', 0, 0, 'lax21', 'test.lax.21@liferay.com', 'Welcome Test LAX 21!', 'Test', '', 'LAX 21', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (194, 1, 2, 'Test LAX 21', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 21', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (195, 1, 193, 13, 193, 0, 0, '195', 0, '/lax21', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (196, 1, 195, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (197, 1, 195, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (193, 19);

insert into Users_Orgs (userId, organizationId) values (193, 22);
insert into Users_Orgs (userId, organizationId) values (193, 48);

insert into Users_Roles values (193, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (198, 1, sysdate, sysdate, 0, 199, 'test', 0, 0, 'lax22', 'test.lax.22@liferay.com', 'Welcome Test LAX 22!', 'Test', '', 'LAX 22', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (199, 1, 2, 'Test LAX 22', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 22', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (200, 1, 198, 13, 198, 0, 0, '200', 0, '/lax22', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (201, 1, 200, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (202, 1, 200, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (198, 19);

insert into Users_Orgs (userId, organizationId) values (198, 22);
insert into Users_Orgs (userId, organizationId) values (198, 48);

insert into Users_Roles values (198, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (203, 1, sysdate, sysdate, 0, 204, 'test', 0, 0, 'lax23', 'test.lax.23@liferay.com', 'Welcome Test LAX 23!', 'Test', '', 'LAX 23', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (204, 1, 2, 'Test LAX 23', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 23', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (205, 1, 203, 13, 203, 0, 0, '205', 0, '/lax23', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (206, 1, 205, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (207, 1, 205, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (203, 19);

insert into Users_Orgs (userId, organizationId) values (203, 22);
insert into Users_Orgs (userId, organizationId) values (203, 48);

insert into Users_Roles values (203, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (208, 1, sysdate, sysdate, 0, 209, 'test', 0, 0, 'lax24', 'test.lax.24@liferay.com', 'Welcome Test LAX 24!', 'Test', '', 'LAX 24', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (209, 1, 2, 'Test LAX 24', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 24', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (210, 1, 208, 13, 208, 0, 0, '210', 0, '/lax24', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (211, 1, 210, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (212, 1, 210, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (208, 19);

insert into Users_Orgs (userId, organizationId) values (208, 22);
insert into Users_Orgs (userId, organizationId) values (208, 48);

insert into Users_Roles values (208, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (213, 1, sysdate, sysdate, 0, 214, 'test', 0, 0, 'lax25', 'test.lax.25@liferay.com', 'Welcome Test LAX 25!', 'Test', '', 'LAX 25', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (214, 1, 2, 'Test LAX 25', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 25', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (215, 1, 213, 13, 213, 0, 0, '215', 0, '/lax25', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (216, 1, 215, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (217, 1, 215, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (213, 19);

insert into Users_Orgs (userId, organizationId) values (213, 22);
insert into Users_Orgs (userId, organizationId) values (213, 48);

insert into Users_Roles values (213, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (218, 1, sysdate, sysdate, 0, 219, 'test', 0, 0, 'lax26', 'test.lax.26@liferay.com', 'Welcome Test LAX 26!', 'Test', '', 'LAX 26', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (219, 1, 2, 'Test LAX 26', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 26', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (220, 1, 218, 13, 218, 0, 0, '220', 0, '/lax26', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (221, 1, 220, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (222, 1, 220, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (218, 19);

insert into Users_Orgs (userId, organizationId) values (218, 22);
insert into Users_Orgs (userId, organizationId) values (218, 48);

insert into Users_Roles values (218, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (223, 1, sysdate, sysdate, 0, 224, 'test', 0, 0, 'lax27', 'test.lax.27@liferay.com', 'Welcome Test LAX 27!', 'Test', '', 'LAX 27', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (224, 1, 2, 'Test LAX 27', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 27', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (225, 1, 223, 13, 223, 0, 0, '225', 0, '/lax27', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (226, 1, 225, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (227, 1, 225, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (223, 19);

insert into Users_Orgs (userId, organizationId) values (223, 22);
insert into Users_Orgs (userId, organizationId) values (223, 48);

insert into Users_Roles values (223, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (228, 1, sysdate, sysdate, 0, 229, 'test', 0, 0, 'lax28', 'test.lax.28@liferay.com', 'Welcome Test LAX 28!', 'Test', '', 'LAX 28', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (229, 1, 2, 'Test LAX 28', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 28', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (230, 1, 228, 13, 228, 0, 0, '230', 0, '/lax28', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (231, 1, 230, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (232, 1, 230, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (228, 19);

insert into Users_Orgs (userId, organizationId) values (228, 22);
insert into Users_Orgs (userId, organizationId) values (228, 48);

insert into Users_Roles values (228, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (233, 1, sysdate, sysdate, 0, 234, 'test', 0, 0, 'lax29', 'test.lax.29@liferay.com', 'Welcome Test LAX 29!', 'Test', '', 'LAX 29', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (234, 1, 2, 'Test LAX 29', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 29', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (235, 1, 233, 13, 233, 0, 0, '235', 0, '/lax29', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (236, 1, 235, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (237, 1, 235, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (233, 19);

insert into Users_Orgs (userId, organizationId) values (233, 22);
insert into Users_Orgs (userId, organizationId) values (233, 48);

insert into Users_Roles values (233, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (238, 1, sysdate, sysdate, 0, 239, 'test', 0, 0, 'lax30', 'test.lax.30@liferay.com', 'Welcome Test LAX 30!', 'Test', '', 'LAX 30', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (239, 1, 2, 'Test LAX 30', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 30', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (240, 1, 238, 13, 238, 0, 0, '240', 0, '/lax30', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (241, 1, 240, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (242, 1, 240, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (238, 19);

insert into Users_Orgs (userId, organizationId) values (238, 22);
insert into Users_Orgs (userId, organizationId) values (238, 48);

insert into Users_Roles values (238, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (243, 1, sysdate, sysdate, 0, 244, 'test', 0, 0, 'lax31', 'test.lax.31@liferay.com', 'Welcome Test LAX 31!', 'Test', '', 'LAX 31', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (244, 1, 2, 'Test LAX 31', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 31', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (245, 1, 243, 13, 243, 0, 0, '245', 0, '/lax31', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (246, 1, 245, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (247, 1, 245, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (243, 19);

insert into Users_Orgs (userId, organizationId) values (243, 22);
insert into Users_Orgs (userId, organizationId) values (243, 48);

insert into Users_Roles values (243, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (248, 1, sysdate, sysdate, 0, 249, 'test', 0, 0, 'lax32', 'test.lax.32@liferay.com', 'Welcome Test LAX 32!', 'Test', '', 'LAX 32', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (249, 1, 2, 'Test LAX 32', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 32', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (250, 1, 248, 13, 248, 0, 0, '250', 0, '/lax32', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (251, 1, 250, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (252, 1, 250, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (248, 19);

insert into Users_Orgs (userId, organizationId) values (248, 22);
insert into Users_Orgs (userId, organizationId) values (248, 48);

insert into Users_Roles values (248, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (253, 1, sysdate, sysdate, 0, 254, 'test', 0, 0, 'lax33', 'test.lax.33@liferay.com', 'Welcome Test LAX 33!', 'Test', '', 'LAX 33', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (254, 1, 2, 'Test LAX 33', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 33', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (255, 1, 253, 13, 253, 0, 0, '255', 0, '/lax33', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (256, 1, 255, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (257, 1, 255, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (253, 19);

insert into Users_Orgs (userId, organizationId) values (253, 22);
insert into Users_Orgs (userId, organizationId) values (253, 48);

insert into Users_Roles values (253, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (258, 1, sysdate, sysdate, 0, 259, 'test', 0, 0, 'lax34', 'test.lax.34@liferay.com', 'Welcome Test LAX 34!', 'Test', '', 'LAX 34', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (259, 1, 2, 'Test LAX 34', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 34', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (260, 1, 258, 13, 258, 0, 0, '260', 0, '/lax34', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (261, 1, 260, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (262, 1, 260, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (258, 19);

insert into Users_Orgs (userId, organizationId) values (258, 22);
insert into Users_Orgs (userId, organizationId) values (258, 48);

insert into Users_Roles values (258, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (263, 1, sysdate, sysdate, 0, 264, 'test', 0, 0, 'lax35', 'test.lax.35@liferay.com', 'Welcome Test LAX 35!', 'Test', '', 'LAX 35', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (264, 1, 2, 'Test LAX 35', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 35', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (265, 1, 263, 13, 263, 0, 0, '265', 0, '/lax35', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (266, 1, 265, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (267, 1, 265, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (263, 19);

insert into Users_Orgs (userId, organizationId) values (263, 22);
insert into Users_Orgs (userId, organizationId) values (263, 48);

insert into Users_Roles values (263, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (268, 1, sysdate, sysdate, 0, 269, 'test', 0, 0, 'lax36', 'test.lax.36@liferay.com', 'Welcome Test LAX 36!', 'Test', '', 'LAX 36', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (269, 1, 2, 'Test LAX 36', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 36', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (270, 1, 268, 13, 268, 0, 0, '270', 0, '/lax36', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (271, 1, 270, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (272, 1, 270, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (268, 19);

insert into Users_Orgs (userId, organizationId) values (268, 22);
insert into Users_Orgs (userId, organizationId) values (268, 48);

insert into Users_Roles values (268, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (273, 1, sysdate, sysdate, 0, 274, 'test', 0, 0, 'lax37', 'test.lax.37@liferay.com', 'Welcome Test LAX 37!', 'Test', '', 'LAX 37', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (274, 1, 2, 'Test LAX 37', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 37', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (275, 1, 273, 13, 273, 0, 0, '275', 0, '/lax37', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (276, 1, 275, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (277, 1, 275, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (273, 19);

insert into Users_Orgs (userId, organizationId) values (273, 22);
insert into Users_Orgs (userId, organizationId) values (273, 48);

insert into Users_Roles values (273, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (278, 1, sysdate, sysdate, 0, 279, 'test', 0, 0, 'lax38', 'test.lax.38@liferay.com', 'Welcome Test LAX 38!', 'Test', '', 'LAX 38', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (279, 1, 2, 'Test LAX 38', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 38', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (280, 1, 278, 13, 278, 0, 0, '280', 0, '/lax38', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (281, 1, 280, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (282, 1, 280, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (278, 19);

insert into Users_Orgs (userId, organizationId) values (278, 22);
insert into Users_Orgs (userId, organizationId) values (278, 48);

insert into Users_Roles values (278, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (283, 1, sysdate, sysdate, 0, 284, 'test', 0, 0, 'lax39', 'test.lax.39@liferay.com', 'Welcome Test LAX 39!', 'Test', '', 'LAX 39', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (284, 1, 2, 'Test LAX 39', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 39', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (285, 1, 283, 13, 283, 0, 0, '285', 0, '/lax39', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (286, 1, 285, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (287, 1, 285, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (283, 19);

insert into Users_Orgs (userId, organizationId) values (283, 22);
insert into Users_Orgs (userId, organizationId) values (283, 48);

insert into Users_Roles values (283, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (288, 1, sysdate, sysdate, 0, 289, 'test', 0, 0, 'lax40', 'test.lax.40@liferay.com', 'Welcome Test LAX 40!', 'Test', '', 'LAX 40', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (289, 1, 2, 'Test LAX 40', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 40', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (290, 1, 288, 13, 288, 0, 0, '290', 0, '/lax40', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (291, 1, 290, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (292, 1, 290, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (288, 19);

insert into Users_Orgs (userId, organizationId) values (288, 22);
insert into Users_Orgs (userId, organizationId) values (288, 48);

insert into Users_Roles values (288, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (293, 1, sysdate, sysdate, 0, 294, 'test', 0, 0, 'lax41', 'test.lax.41@liferay.com', 'Welcome Test LAX 41!', 'Test', '', 'LAX 41', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (294, 1, 2, 'Test LAX 41', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 41', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (295, 1, 293, 13, 293, 0, 0, '295', 0, '/lax41', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (296, 1, 295, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (297, 1, 295, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (293, 19);

insert into Users_Orgs (userId, organizationId) values (293, 22);
insert into Users_Orgs (userId, organizationId) values (293, 48);

insert into Users_Roles values (293, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (298, 1, sysdate, sysdate, 0, 299, 'test', 0, 0, 'lax42', 'test.lax.42@liferay.com', 'Welcome Test LAX 42!', 'Test', '', 'LAX 42', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (299, 1, 2, 'Test LAX 42', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 42', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (300, 1, 298, 13, 298, 0, 0, '300', 0, '/lax42', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (301, 1, 300, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (302, 1, 300, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (298, 19);

insert into Users_Orgs (userId, organizationId) values (298, 22);
insert into Users_Orgs (userId, organizationId) values (298, 48);

insert into Users_Roles values (298, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (303, 1, sysdate, sysdate, 0, 304, 'test', 0, 0, 'lax43', 'test.lax.43@liferay.com', 'Welcome Test LAX 43!', 'Test', '', 'LAX 43', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (304, 1, 2, 'Test LAX 43', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 43', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (305, 1, 303, 13, 303, 0, 0, '305', 0, '/lax43', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (306, 1, 305, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (307, 1, 305, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (303, 19);

insert into Users_Orgs (userId, organizationId) values (303, 22);
insert into Users_Orgs (userId, organizationId) values (303, 48);

insert into Users_Roles values (303, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (308, 1, sysdate, sysdate, 0, 309, 'test', 0, 0, 'lax44', 'test.lax.44@liferay.com', 'Welcome Test LAX 44!', 'Test', '', 'LAX 44', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (309, 1, 2, 'Test LAX 44', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 44', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (310, 1, 308, 13, 308, 0, 0, '310', 0, '/lax44', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (311, 1, 310, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (312, 1, 310, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (308, 19);

insert into Users_Orgs (userId, organizationId) values (308, 22);
insert into Users_Orgs (userId, organizationId) values (308, 48);

insert into Users_Roles values (308, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (313, 1, sysdate, sysdate, 0, 314, 'test', 0, 0, 'lax45', 'test.lax.45@liferay.com', 'Welcome Test LAX 45!', 'Test', '', 'LAX 45', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (314, 1, 2, 'Test LAX 45', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 45', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (315, 1, 313, 13, 313, 0, 0, '315', 0, '/lax45', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (316, 1, 315, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (317, 1, 315, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (313, 19);

insert into Users_Orgs (userId, organizationId) values (313, 22);
insert into Users_Orgs (userId, organizationId) values (313, 48);

insert into Users_Roles values (313, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (318, 1, sysdate, sysdate, 0, 319, 'test', 0, 0, 'lax46', 'test.lax.46@liferay.com', 'Welcome Test LAX 46!', 'Test', '', 'LAX 46', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (319, 1, 2, 'Test LAX 46', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 46', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (320, 1, 318, 13, 318, 0, 0, '320', 0, '/lax46', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (321, 1, 320, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (322, 1, 320, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (318, 19);

insert into Users_Orgs (userId, organizationId) values (318, 22);
insert into Users_Orgs (userId, organizationId) values (318, 48);

insert into Users_Roles values (318, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (323, 1, sysdate, sysdate, 0, 324, 'test', 0, 0, 'lax47', 'test.lax.47@liferay.com', 'Welcome Test LAX 47!', 'Test', '', 'LAX 47', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (324, 1, 2, 'Test LAX 47', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 47', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (325, 1, 323, 13, 323, 0, 0, '325', 0, '/lax47', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (326, 1, 325, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (327, 1, 325, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (323, 19);

insert into Users_Orgs (userId, organizationId) values (323, 22);
insert into Users_Orgs (userId, organizationId) values (323, 48);

insert into Users_Roles values (323, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (328, 1, sysdate, sysdate, 0, 329, 'test', 0, 0, 'lax48', 'test.lax.48@liferay.com', 'Welcome Test LAX 48!', 'Test', '', 'LAX 48', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (329, 1, 2, 'Test LAX 48', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 48', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (330, 1, 328, 13, 328, 0, 0, '330', 0, '/lax48', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (331, 1, 330, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (332, 1, 330, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (328, 19);

insert into Users_Orgs (userId, organizationId) values (328, 22);
insert into Users_Orgs (userId, organizationId) values (328, 48);

insert into Users_Roles values (328, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (333, 1, sysdate, sysdate, 0, 334, 'test', 0, 0, 'lax49', 'test.lax.49@liferay.com', 'Welcome Test LAX 49!', 'Test', '', 'LAX 49', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (334, 1, 2, 'Test LAX 49', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 49', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (335, 1, 333, 13, 333, 0, 0, '335', 0, '/lax49', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (336, 1, 335, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (337, 1, 335, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (333, 19);

insert into Users_Orgs (userId, organizationId) values (333, 22);
insert into Users_Orgs (userId, organizationId) values (333, 48);

insert into Users_Roles values (333, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (338, 1, sysdate, sysdate, 0, 339, 'test', 0, 0, 'lax50', 'test.lax.50@liferay.com', 'Welcome Test LAX 50!', 'Test', '', 'LAX 50', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (339, 1, 2, 'Test LAX 50', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 50', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (340, 1, 338, 13, 338, 0, 0, '340', 0, '/lax50', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (341, 1, 340, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (342, 1, 340, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (338, 19);

insert into Users_Orgs (userId, organizationId) values (338, 22);
insert into Users_Orgs (userId, organizationId) values (338, 48);

insert into Users_Roles values (338, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (343, 1, sysdate, sysdate, 0, 344, 'test', 0, 0, 'lax51', 'test.lax.51@liferay.com', 'Welcome Test LAX 51!', 'Test', '', 'LAX 51', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (344, 1, 2, 'Test LAX 51', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 51', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (345, 1, 343, 13, 343, 0, 0, '345', 0, '/lax51', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (346, 1, 345, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (347, 1, 345, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (343, 19);

insert into Users_Orgs (userId, organizationId) values (343, 22);
insert into Users_Orgs (userId, organizationId) values (343, 48);

insert into Users_Roles values (343, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (348, 1, sysdate, sysdate, 0, 349, 'test', 0, 0, 'lax52', 'test.lax.52@liferay.com', 'Welcome Test LAX 52!', 'Test', '', 'LAX 52', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (349, 1, 2, 'Test LAX 52', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 52', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (350, 1, 348, 13, 348, 0, 0, '350', 0, '/lax52', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (351, 1, 350, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (352, 1, 350, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (348, 19);

insert into Users_Orgs (userId, organizationId) values (348, 22);
insert into Users_Orgs (userId, organizationId) values (348, 48);

insert into Users_Roles values (348, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (353, 1, sysdate, sysdate, 0, 354, 'test', 0, 0, 'lax53', 'test.lax.53@liferay.com', 'Welcome Test LAX 53!', 'Test', '', 'LAX 53', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (354, 1, 2, 'Test LAX 53', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 53', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (355, 1, 353, 13, 353, 0, 0, '355', 0, '/lax53', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (356, 1, 355, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (357, 1, 355, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (353, 19);

insert into Users_Orgs (userId, organizationId) values (353, 22);
insert into Users_Orgs (userId, organizationId) values (353, 48);

insert into Users_Roles values (353, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (358, 1, sysdate, sysdate, 0, 359, 'test', 0, 0, 'lax54', 'test.lax.54@liferay.com', 'Welcome Test LAX 54!', 'Test', '', 'LAX 54', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (359, 1, 2, 'Test LAX 54', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 54', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (360, 1, 358, 13, 358, 0, 0, '360', 0, '/lax54', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (361, 1, 360, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (362, 1, 360, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (358, 19);

insert into Users_Orgs (userId, organizationId) values (358, 22);
insert into Users_Orgs (userId, organizationId) values (358, 48);

insert into Users_Roles values (358, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (363, 1, sysdate, sysdate, 0, 364, 'test', 0, 0, 'lax55', 'test.lax.55@liferay.com', 'Welcome Test LAX 55!', 'Test', '', 'LAX 55', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (364, 1, 2, 'Test LAX 55', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 55', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (365, 1, 363, 13, 363, 0, 0, '365', 0, '/lax55', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (366, 1, 365, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (367, 1, 365, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (363, 19);

insert into Users_Orgs (userId, organizationId) values (363, 22);
insert into Users_Orgs (userId, organizationId) values (363, 48);

insert into Users_Roles values (363, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (368, 1, sysdate, sysdate, 0, 369, 'test', 0, 0, 'lax56', 'test.lax.56@liferay.com', 'Welcome Test LAX 56!', 'Test', '', 'LAX 56', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (369, 1, 2, 'Test LAX 56', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 56', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (370, 1, 368, 13, 368, 0, 0, '370', 0, '/lax56', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (371, 1, 370, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (372, 1, 370, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (368, 19);

insert into Users_Orgs (userId, organizationId) values (368, 22);
insert into Users_Orgs (userId, organizationId) values (368, 48);

insert into Users_Roles values (368, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (373, 1, sysdate, sysdate, 0, 374, 'test', 0, 0, 'lax57', 'test.lax.57@liferay.com', 'Welcome Test LAX 57!', 'Test', '', 'LAX 57', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (374, 1, 2, 'Test LAX 57', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 57', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (375, 1, 373, 13, 373, 0, 0, '375', 0, '/lax57', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (376, 1, 375, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (377, 1, 375, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (373, 19);

insert into Users_Orgs (userId, organizationId) values (373, 22);
insert into Users_Orgs (userId, organizationId) values (373, 48);

insert into Users_Roles values (373, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (378, 1, sysdate, sysdate, 0, 379, 'test', 0, 0, 'lax58', 'test.lax.58@liferay.com', 'Welcome Test LAX 58!', 'Test', '', 'LAX 58', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (379, 1, 2, 'Test LAX 58', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 58', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (380, 1, 378, 13, 378, 0, 0, '380', 0, '/lax58', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (381, 1, 380, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (382, 1, 380, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (378, 19);

insert into Users_Orgs (userId, organizationId) values (378, 22);
insert into Users_Orgs (userId, organizationId) values (378, 48);

insert into Users_Roles values (378, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (383, 1, sysdate, sysdate, 0, 384, 'test', 0, 0, 'lax59', 'test.lax.59@liferay.com', 'Welcome Test LAX 59!', 'Test', '', 'LAX 59', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (384, 1, 2, 'Test LAX 59', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 59', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (385, 1, 383, 13, 383, 0, 0, '385', 0, '/lax59', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (386, 1, 385, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (387, 1, 385, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (383, 19);

insert into Users_Orgs (userId, organizationId) values (383, 22);
insert into Users_Orgs (userId, organizationId) values (383, 48);

insert into Users_Roles values (383, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (388, 1, sysdate, sysdate, 0, 389, 'test', 0, 0, 'lax60', 'test.lax.60@liferay.com', 'Welcome Test LAX 60!', 'Test', '', 'LAX 60', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (389, 1, 2, 'Test LAX 60', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 60', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (390, 1, 388, 13, 388, 0, 0, '390', 0, '/lax60', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (391, 1, 390, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (392, 1, 390, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (388, 19);

insert into Users_Orgs (userId, organizationId) values (388, 22);
insert into Users_Orgs (userId, organizationId) values (388, 48);

insert into Users_Roles values (388, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (393, 1, sysdate, sysdate, 0, 394, 'test', 0, 0, 'lax61', 'test.lax.61@liferay.com', 'Welcome Test LAX 61!', 'Test', '', 'LAX 61', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (394, 1, 2, 'Test LAX 61', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 61', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (395, 1, 393, 13, 393, 0, 0, '395', 0, '/lax61', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (396, 1, 395, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (397, 1, 395, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (393, 19);

insert into Users_Orgs (userId, organizationId) values (393, 22);
insert into Users_Orgs (userId, organizationId) values (393, 48);

insert into Users_Roles values (393, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (398, 1, sysdate, sysdate, 0, 399, 'test', 0, 0, 'lax62', 'test.lax.62@liferay.com', 'Welcome Test LAX 62!', 'Test', '', 'LAX 62', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (399, 1, 2, 'Test LAX 62', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 62', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (400, 1, 398, 13, 398, 0, 0, '400', 0, '/lax62', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (401, 1, 400, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (402, 1, 400, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (398, 19);

insert into Users_Orgs (userId, organizationId) values (398, 22);
insert into Users_Orgs (userId, organizationId) values (398, 48);

insert into Users_Roles values (398, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (403, 1, sysdate, sysdate, 0, 404, 'test', 0, 0, 'lax63', 'test.lax.63@liferay.com', 'Welcome Test LAX 63!', 'Test', '', 'LAX 63', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (404, 1, 2, 'Test LAX 63', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 63', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (405, 1, 403, 13, 403, 0, 0, '405', 0, '/lax63', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (406, 1, 405, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (407, 1, 405, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (403, 19);

insert into Users_Orgs (userId, organizationId) values (403, 22);
insert into Users_Orgs (userId, organizationId) values (403, 48);

insert into Users_Roles values (403, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (408, 1, sysdate, sysdate, 0, 409, 'test', 0, 0, 'lax64', 'test.lax.64@liferay.com', 'Welcome Test LAX 64!', 'Test', '', 'LAX 64', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (409, 1, 2, 'Test LAX 64', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 64', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (410, 1, 408, 13, 408, 0, 0, '410', 0, '/lax64', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (411, 1, 410, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (412, 1, 410, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (408, 19);

insert into Users_Orgs (userId, organizationId) values (408, 22);
insert into Users_Orgs (userId, organizationId) values (408, 48);

insert into Users_Roles values (408, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (413, 1, sysdate, sysdate, 0, 414, 'test', 0, 0, 'lax65', 'test.lax.65@liferay.com', 'Welcome Test LAX 65!', 'Test', '', 'LAX 65', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (414, 1, 2, 'Test LAX 65', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 65', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (415, 1, 413, 13, 413, 0, 0, '415', 0, '/lax65', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (416, 1, 415, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (417, 1, 415, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (413, 19);

insert into Users_Orgs (userId, organizationId) values (413, 22);
insert into Users_Orgs (userId, organizationId) values (413, 48);

insert into Users_Roles values (413, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (418, 1, sysdate, sysdate, 0, 419, 'test', 0, 0, 'lax66', 'test.lax.66@liferay.com', 'Welcome Test LAX 66!', 'Test', '', 'LAX 66', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (419, 1, 2, 'Test LAX 66', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 66', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (420, 1, 418, 13, 418, 0, 0, '420', 0, '/lax66', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (421, 1, 420, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (422, 1, 420, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (418, 19);

insert into Users_Orgs (userId, organizationId) values (418, 22);
insert into Users_Orgs (userId, organizationId) values (418, 48);

insert into Users_Roles values (418, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (423, 1, sysdate, sysdate, 0, 424, 'test', 0, 0, 'lax67', 'test.lax.67@liferay.com', 'Welcome Test LAX 67!', 'Test', '', 'LAX 67', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (424, 1, 2, 'Test LAX 67', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 67', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (425, 1, 423, 13, 423, 0, 0, '425', 0, '/lax67', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (426, 1, 425, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (427, 1, 425, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (423, 19);

insert into Users_Orgs (userId, organizationId) values (423, 22);
insert into Users_Orgs (userId, organizationId) values (423, 48);

insert into Users_Roles values (423, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (428, 1, sysdate, sysdate, 0, 429, 'test', 0, 0, 'lax68', 'test.lax.68@liferay.com', 'Welcome Test LAX 68!', 'Test', '', 'LAX 68', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (429, 1, 2, 'Test LAX 68', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 68', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (430, 1, 428, 13, 428, 0, 0, '430', 0, '/lax68', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (431, 1, 430, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (432, 1, 430, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (428, 19);

insert into Users_Orgs (userId, organizationId) values (428, 22);
insert into Users_Orgs (userId, organizationId) values (428, 48);

insert into Users_Roles values (428, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (433, 1, sysdate, sysdate, 0, 434, 'test', 0, 0, 'lax69', 'test.lax.69@liferay.com', 'Welcome Test LAX 69!', 'Test', '', 'LAX 69', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (434, 1, 2, 'Test LAX 69', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 69', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (435, 1, 433, 13, 433, 0, 0, '435', 0, '/lax69', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (436, 1, 435, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (437, 1, 435, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (433, 19);

insert into Users_Orgs (userId, organizationId) values (433, 22);
insert into Users_Orgs (userId, organizationId) values (433, 48);

insert into Users_Roles values (433, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (438, 1, sysdate, sysdate, 0, 439, 'test', 0, 0, 'lax70', 'test.lax.70@liferay.com', 'Welcome Test LAX 70!', 'Test', '', 'LAX 70', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (439, 1, 2, 'Test LAX 70', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 70', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (440, 1, 438, 13, 438, 0, 0, '440', 0, '/lax70', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (441, 1, 440, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (442, 1, 440, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (438, 19);

insert into Users_Orgs (userId, organizationId) values (438, 22);
insert into Users_Orgs (userId, organizationId) values (438, 48);

insert into Users_Roles values (438, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (443, 1, sysdate, sysdate, 0, 444, 'test', 0, 0, 'lax71', 'test.lax.71@liferay.com', 'Welcome Test LAX 71!', 'Test', '', 'LAX 71', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (444, 1, 2, 'Test LAX 71', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 71', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (445, 1, 443, 13, 443, 0, 0, '445', 0, '/lax71', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (446, 1, 445, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (447, 1, 445, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (443, 19);

insert into Users_Orgs (userId, organizationId) values (443, 22);
insert into Users_Orgs (userId, organizationId) values (443, 48);

insert into Users_Roles values (443, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (448, 1, sysdate, sysdate, 0, 449, 'test', 0, 0, 'lax72', 'test.lax.72@liferay.com', 'Welcome Test LAX 72!', 'Test', '', 'LAX 72', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (449, 1, 2, 'Test LAX 72', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 72', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (450, 1, 448, 13, 448, 0, 0, '450', 0, '/lax72', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (451, 1, 450, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (452, 1, 450, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (448, 19);

insert into Users_Orgs (userId, organizationId) values (448, 22);
insert into Users_Orgs (userId, organizationId) values (448, 48);

insert into Users_Roles values (448, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (453, 1, sysdate, sysdate, 0, 454, 'test', 0, 0, 'lax73', 'test.lax.73@liferay.com', 'Welcome Test LAX 73!', 'Test', '', 'LAX 73', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (454, 1, 2, 'Test LAX 73', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 73', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (455, 1, 453, 13, 453, 0, 0, '455', 0, '/lax73', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (456, 1, 455, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (457, 1, 455, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (453, 19);

insert into Users_Orgs (userId, organizationId) values (453, 22);
insert into Users_Orgs (userId, organizationId) values (453, 48);

insert into Users_Roles values (453, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (458, 1, sysdate, sysdate, 0, 459, 'test', 0, 0, 'lax74', 'test.lax.74@liferay.com', 'Welcome Test LAX 74!', 'Test', '', 'LAX 74', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (459, 1, 2, 'Test LAX 74', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 74', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (460, 1, 458, 13, 458, 0, 0, '460', 0, '/lax74', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (461, 1, 460, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (462, 1, 460, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (458, 19);

insert into Users_Orgs (userId, organizationId) values (458, 22);
insert into Users_Orgs (userId, organizationId) values (458, 48);

insert into Users_Roles values (458, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (463, 1, sysdate, sysdate, 0, 464, 'test', 0, 0, 'lax75', 'test.lax.75@liferay.com', 'Welcome Test LAX 75!', 'Test', '', 'LAX 75', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (464, 1, 2, 'Test LAX 75', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 75', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (465, 1, 463, 13, 463, 0, 0, '465', 0, '/lax75', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (466, 1, 465, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (467, 1, 465, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (463, 19);

insert into Users_Orgs (userId, organizationId) values (463, 22);
insert into Users_Orgs (userId, organizationId) values (463, 48);

insert into Users_Roles values (463, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (468, 1, sysdate, sysdate, 0, 469, 'test', 0, 0, 'lax76', 'test.lax.76@liferay.com', 'Welcome Test LAX 76!', 'Test', '', 'LAX 76', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (469, 1, 2, 'Test LAX 76', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 76', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (470, 1, 468, 13, 468, 0, 0, '470', 0, '/lax76', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (471, 1, 470, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (472, 1, 470, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (468, 19);

insert into Users_Orgs (userId, organizationId) values (468, 22);
insert into Users_Orgs (userId, organizationId) values (468, 48);

insert into Users_Roles values (468, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (473, 1, sysdate, sysdate, 0, 474, 'test', 0, 0, 'lax77', 'test.lax.77@liferay.com', 'Welcome Test LAX 77!', 'Test', '', 'LAX 77', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (474, 1, 2, 'Test LAX 77', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 77', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (475, 1, 473, 13, 473, 0, 0, '475', 0, '/lax77', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (476, 1, 475, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (477, 1, 475, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (473, 19);

insert into Users_Orgs (userId, organizationId) values (473, 22);
insert into Users_Orgs (userId, organizationId) values (473, 48);

insert into Users_Roles values (473, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (478, 1, sysdate, sysdate, 0, 479, 'test', 0, 0, 'lax78', 'test.lax.78@liferay.com', 'Welcome Test LAX 78!', 'Test', '', 'LAX 78', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (479, 1, 2, 'Test LAX 78', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 78', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (480, 1, 478, 13, 478, 0, 0, '480', 0, '/lax78', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (481, 1, 480, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (482, 1, 480, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (478, 19);

insert into Users_Orgs (userId, organizationId) values (478, 22);
insert into Users_Orgs (userId, organizationId) values (478, 48);

insert into Users_Roles values (478, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (483, 1, sysdate, sysdate, 0, 484, 'test', 0, 0, 'lax79', 'test.lax.79@liferay.com', 'Welcome Test LAX 79!', 'Test', '', 'LAX 79', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (484, 1, 2, 'Test LAX 79', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 79', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (485, 1, 483, 13, 483, 0, 0, '485', 0, '/lax79', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (486, 1, 485, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (487, 1, 485, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (483, 19);

insert into Users_Orgs (userId, organizationId) values (483, 22);
insert into Users_Orgs (userId, organizationId) values (483, 48);

insert into Users_Roles values (483, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (488, 1, sysdate, sysdate, 0, 489, 'test', 0, 0, 'lax80', 'test.lax.80@liferay.com', 'Welcome Test LAX 80!', 'Test', '', 'LAX 80', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (489, 1, 2, 'Test LAX 80', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 80', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (490, 1, 488, 13, 488, 0, 0, '490', 0, '/lax80', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (491, 1, 490, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (492, 1, 490, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (488, 19);

insert into Users_Orgs (userId, organizationId) values (488, 22);
insert into Users_Orgs (userId, organizationId) values (488, 48);

insert into Users_Roles values (488, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (493, 1, sysdate, sysdate, 0, 494, 'test', 0, 0, 'lax81', 'test.lax.81@liferay.com', 'Welcome Test LAX 81!', 'Test', '', 'LAX 81', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (494, 1, 2, 'Test LAX 81', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 81', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (495, 1, 493, 13, 493, 0, 0, '495', 0, '/lax81', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (496, 1, 495, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (497, 1, 495, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (493, 19);

insert into Users_Orgs (userId, organizationId) values (493, 22);
insert into Users_Orgs (userId, organizationId) values (493, 48);

insert into Users_Roles values (493, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (498, 1, sysdate, sysdate, 0, 499, 'test', 0, 0, 'lax82', 'test.lax.82@liferay.com', 'Welcome Test LAX 82!', 'Test', '', 'LAX 82', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (499, 1, 2, 'Test LAX 82', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 82', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (500, 1, 498, 13, 498, 0, 0, '500', 0, '/lax82', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (501, 1, 500, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (502, 1, 500, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (498, 19);

insert into Users_Orgs (userId, organizationId) values (498, 22);
insert into Users_Orgs (userId, organizationId) values (498, 48);

insert into Users_Roles values (498, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (503, 1, sysdate, sysdate, 0, 504, 'test', 0, 0, 'lax83', 'test.lax.83@liferay.com', 'Welcome Test LAX 83!', 'Test', '', 'LAX 83', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (504, 1, 2, 'Test LAX 83', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 83', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (505, 1, 503, 13, 503, 0, 0, '505', 0, '/lax83', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (506, 1, 505, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (507, 1, 505, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (503, 19);

insert into Users_Orgs (userId, organizationId) values (503, 22);
insert into Users_Orgs (userId, organizationId) values (503, 48);

insert into Users_Roles values (503, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (508, 1, sysdate, sysdate, 0, 509, 'test', 0, 0, 'lax84', 'test.lax.84@liferay.com', 'Welcome Test LAX 84!', 'Test', '', 'LAX 84', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (509, 1, 2, 'Test LAX 84', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 84', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (510, 1, 508, 13, 508, 0, 0, '510', 0, '/lax84', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (511, 1, 510, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (512, 1, 510, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (508, 19);

insert into Users_Orgs (userId, organizationId) values (508, 22);
insert into Users_Orgs (userId, organizationId) values (508, 48);

insert into Users_Roles values (508, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (513, 1, sysdate, sysdate, 0, 514, 'test', 0, 0, 'lax85', 'test.lax.85@liferay.com', 'Welcome Test LAX 85!', 'Test', '', 'LAX 85', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (514, 1, 2, 'Test LAX 85', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 85', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (515, 1, 513, 13, 513, 0, 0, '515', 0, '/lax85', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (516, 1, 515, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (517, 1, 515, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (513, 19);

insert into Users_Orgs (userId, organizationId) values (513, 22);
insert into Users_Orgs (userId, organizationId) values (513, 48);

insert into Users_Roles values (513, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (518, 1, sysdate, sysdate, 0, 519, 'test', 0, 0, 'lax86', 'test.lax.86@liferay.com', 'Welcome Test LAX 86!', 'Test', '', 'LAX 86', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (519, 1, 2, 'Test LAX 86', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 86', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (520, 1, 518, 13, 518, 0, 0, '520', 0, '/lax86', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (521, 1, 520, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (522, 1, 520, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (518, 19);

insert into Users_Orgs (userId, organizationId) values (518, 22);
insert into Users_Orgs (userId, organizationId) values (518, 48);

insert into Users_Roles values (518, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (523, 1, sysdate, sysdate, 0, 524, 'test', 0, 0, 'lax87', 'test.lax.87@liferay.com', 'Welcome Test LAX 87!', 'Test', '', 'LAX 87', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (524, 1, 2, 'Test LAX 87', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 87', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (525, 1, 523, 13, 523, 0, 0, '525', 0, '/lax87', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (526, 1, 525, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (527, 1, 525, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (523, 19);

insert into Users_Orgs (userId, organizationId) values (523, 22);
insert into Users_Orgs (userId, organizationId) values (523, 48);

insert into Users_Roles values (523, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (528, 1, sysdate, sysdate, 0, 529, 'test', 0, 0, 'lax88', 'test.lax.88@liferay.com', 'Welcome Test LAX 88!', 'Test', '', 'LAX 88', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (529, 1, 2, 'Test LAX 88', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 88', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (530, 1, 528, 13, 528, 0, 0, '530', 0, '/lax88', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (531, 1, 530, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (532, 1, 530, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (528, 19);

insert into Users_Orgs (userId, organizationId) values (528, 22);
insert into Users_Orgs (userId, organizationId) values (528, 48);

insert into Users_Roles values (528, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (533, 1, sysdate, sysdate, 0, 534, 'test', 0, 0, 'lax89', 'test.lax.89@liferay.com', 'Welcome Test LAX 89!', 'Test', '', 'LAX 89', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (534, 1, 2, 'Test LAX 89', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 89', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (535, 1, 533, 13, 533, 0, 0, '535', 0, '/lax89', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (536, 1, 535, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (537, 1, 535, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (533, 19);

insert into Users_Orgs (userId, organizationId) values (533, 22);
insert into Users_Orgs (userId, organizationId) values (533, 48);

insert into Users_Roles values (533, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (538, 1, sysdate, sysdate, 0, 539, 'test', 0, 0, 'lax90', 'test.lax.90@liferay.com', 'Welcome Test LAX 90!', 'Test', '', 'LAX 90', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (539, 1, 2, 'Test LAX 90', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 90', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (540, 1, 538, 13, 538, 0, 0, '540', 0, '/lax90', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (541, 1, 540, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (542, 1, 540, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (538, 19);

insert into Users_Orgs (userId, organizationId) values (538, 22);
insert into Users_Orgs (userId, organizationId) values (538, 48);

insert into Users_Roles values (538, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (543, 1, sysdate, sysdate, 0, 544, 'test', 0, 0, 'lax91', 'test.lax.91@liferay.com', 'Welcome Test LAX 91!', 'Test', '', 'LAX 91', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (544, 1, 2, 'Test LAX 91', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 91', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (545, 1, 543, 13, 543, 0, 0, '545', 0, '/lax91', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (546, 1, 545, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (547, 1, 545, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (543, 19);

insert into Users_Orgs (userId, organizationId) values (543, 22);
insert into Users_Orgs (userId, organizationId) values (543, 48);

insert into Users_Roles values (543, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (548, 1, sysdate, sysdate, 0, 549, 'test', 0, 0, 'lax92', 'test.lax.92@liferay.com', 'Welcome Test LAX 92!', 'Test', '', 'LAX 92', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (549, 1, 2, 'Test LAX 92', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 92', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (550, 1, 548, 13, 548, 0, 0, '550', 0, '/lax92', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (551, 1, 550, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (552, 1, 550, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (548, 19);

insert into Users_Orgs (userId, organizationId) values (548, 22);
insert into Users_Orgs (userId, organizationId) values (548, 48);

insert into Users_Roles values (548, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (553, 1, sysdate, sysdate, 0, 554, 'test', 0, 0, 'lax93', 'test.lax.93@liferay.com', 'Welcome Test LAX 93!', 'Test', '', 'LAX 93', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (554, 1, 2, 'Test LAX 93', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 93', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (555, 1, 553, 13, 553, 0, 0, '555', 0, '/lax93', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (556, 1, 555, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (557, 1, 555, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (553, 19);

insert into Users_Orgs (userId, organizationId) values (553, 22);
insert into Users_Orgs (userId, organizationId) values (553, 48);

insert into Users_Roles values (553, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (558, 1, sysdate, sysdate, 0, 559, 'test', 0, 0, 'lax94', 'test.lax.94@liferay.com', 'Welcome Test LAX 94!', 'Test', '', 'LAX 94', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (559, 1, 2, 'Test LAX 94', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 94', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (560, 1, 558, 13, 558, 0, 0, '560', 0, '/lax94', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (561, 1, 560, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (562, 1, 560, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (558, 19);

insert into Users_Orgs (userId, organizationId) values (558, 22);
insert into Users_Orgs (userId, organizationId) values (558, 48);

insert into Users_Roles values (558, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (563, 1, sysdate, sysdate, 0, 564, 'test', 0, 0, 'lax95', 'test.lax.95@liferay.com', 'Welcome Test LAX 95!', 'Test', '', 'LAX 95', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (564, 1, 2, 'Test LAX 95', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 95', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (565, 1, 563, 13, 563, 0, 0, '565', 0, '/lax95', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (566, 1, 565, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (567, 1, 565, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (563, 19);

insert into Users_Orgs (userId, organizationId) values (563, 22);
insert into Users_Orgs (userId, organizationId) values (563, 48);

insert into Users_Roles values (563, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (568, 1, sysdate, sysdate, 0, 569, 'test', 0, 0, 'lax96', 'test.lax.96@liferay.com', 'Welcome Test LAX 96!', 'Test', '', 'LAX 96', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (569, 1, 2, 'Test LAX 96', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 96', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (570, 1, 568, 13, 568, 0, 0, '570', 0, '/lax96', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (571, 1, 570, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (572, 1, 570, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (568, 19);

insert into Users_Orgs (userId, organizationId) values (568, 22);
insert into Users_Orgs (userId, organizationId) values (568, 48);

insert into Users_Roles values (568, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (573, 1, sysdate, sysdate, 0, 574, 'test', 0, 0, 'lax97', 'test.lax.97@liferay.com', 'Welcome Test LAX 97!', 'Test', '', 'LAX 97', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (574, 1, 2, 'Test LAX 97', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 97', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (575, 1, 573, 13, 573, 0, 0, '575', 0, '/lax97', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (576, 1, 575, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (577, 1, 575, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (573, 19);

insert into Users_Orgs (userId, organizationId) values (573, 22);
insert into Users_Orgs (userId, organizationId) values (573, 48);

insert into Users_Roles values (573, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (578, 1, sysdate, sysdate, 0, 579, 'test', 0, 0, 'lax98', 'test.lax.98@liferay.com', 'Welcome Test LAX 98!', 'Test', '', 'LAX 98', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (579, 1, 2, 'Test LAX 98', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 98', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (580, 1, 578, 13, 578, 0, 0, '580', 0, '/lax98', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (581, 1, 580, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (582, 1, 580, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (578, 19);

insert into Users_Orgs (userId, organizationId) values (578, 22);
insert into Users_Orgs (userId, organizationId) values (578, 48);

insert into Users_Roles values (578, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (583, 1, sysdate, sysdate, 0, 584, 'test', 0, 0, 'lax99', 'test.lax.99@liferay.com', 'Welcome Test LAX 99!', 'Test', '', 'LAX 99', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (584, 1, 2, 'Test LAX 99', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 99', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (585, 1, 583, 13, 583, 0, 0, '585', 0, '/lax99', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (586, 1, 585, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (587, 1, 585, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (583, 19);

insert into Users_Orgs (userId, organizationId) values (583, 22);
insert into Users_Orgs (userId, organizationId) values (583, 48);

insert into Users_Roles values (583, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (588, 1, sysdate, sysdate, 0, 589, 'test', 0, 0, 'lax100', 'test.lax.100@liferay.com', 'Welcome Test LAX 100!', 'Test', '', 'LAX 100', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (589, 1, 2, 'Test LAX 100', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 100', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (590, 1, 588, 13, 588, 0, 0, '590', 0, '/lax100', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (591, 1, 590, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (592, 1, 590, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (588, 19);

insert into Users_Orgs (userId, organizationId) values (588, 22);
insert into Users_Orgs (userId, organizationId) values (588, 48);

insert into Users_Roles values (588, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (593, 1, sysdate, sysdate, 0, 594, 'test', 0, 0, 'sfo1', 'test.sfo.1@liferay.com', 'Welcome Test SFO 1!', 'Test', '', 'SFO 1', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (594, 1, 2, 'Test SFO 1', sysdate, sysdate, 7, 0, 'Test', '', 'SFO 1', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (595, 1, 593, 13, 593, 0, 0, '595', 0, '/sfo1', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (596, 1, 595, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (597, 1, 595, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (593, 19);

insert into Users_Orgs (userId, organizationId) values (593, 22);
insert into Users_Orgs (userId, organizationId) values (593, 52);

insert into Users_Roles values (593, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (598, 1, sysdate, sysdate, 0, 599, 'test', 0, 0, 'sfo2', 'test.sfo.2@liferay.com', 'Welcome Test SFO 2!', 'Test', '', 'SFO 2', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (599, 1, 2, 'Test SFO 2', sysdate, sysdate, 7, 0, 'Test', '', 'SFO 2', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (600, 1, 598, 13, 598, 0, 0, '600', 0, '/sfo2', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (601, 1, 600, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (602, 1, 600, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (598, 19);

insert into Users_Orgs (userId, organizationId) values (598, 22);
insert into Users_Orgs (userId, organizationId) values (598, 52);

insert into Users_Roles values (598, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (603, 1, sysdate, sysdate, 0, 604, 'test', 0, 0, 'sfo3', 'test.sfo.3@liferay.com', 'Welcome Test SFO 3!', 'Test', '', 'SFO 3', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (604, 1, 2, 'Test SFO 3', sysdate, sysdate, 7, 0, 'Test', '', 'SFO 3', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (605, 1, 603, 13, 603, 0, 0, '605', 0, '/sfo3', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (606, 1, 605, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (607, 1, 605, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (603, 19);

insert into Users_Orgs (userId, organizationId) values (603, 22);
insert into Users_Orgs (userId, organizationId) values (603, 52);

insert into Users_Roles values (603, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (608, 1, sysdate, sysdate, 0, 609, 'test', 0, 0, 'sfo4', 'test.sfo.4@liferay.com', 'Welcome Test SFO 4!', 'Test', '', 'SFO 4', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (609, 1, 2, 'Test SFO 4', sysdate, sysdate, 7, 0, 'Test', '', 'SFO 4', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (610, 1, 608, 13, 608, 0, 0, '610', 0, '/sfo4', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (611, 1, 610, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (612, 1, 610, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (608, 19);

insert into Users_Orgs (userId, organizationId) values (608, 22);
insert into Users_Orgs (userId, organizationId) values (608, 52);

insert into Users_Roles values (608, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (613, 1, sysdate, sysdate, 0, 614, 'test', 0, 0, 'sfo5', 'test.sfo.5@liferay.com', 'Welcome Test SFO 5!', 'Test', '', 'SFO 5', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (614, 1, 2, 'Test SFO 5', sysdate, sysdate, 7, 0, 'Test', '', 'SFO 5', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (615, 1, 613, 13, 613, 0, 0, '615', 0, '/sfo5', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (616, 1, 615, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (617, 1, 615, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (613, 19);

insert into Users_Orgs (userId, organizationId) values (613, 22);
insert into Users_Orgs (userId, organizationId) values (613, 52);

insert into Users_Roles values (613, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (618, 1, sysdate, sysdate, 0, 619, 'test', 0, 0, 'sfo6', 'test.sfo.6@liferay.com', 'Welcome Test SFO 6!', 'Test', '', 'SFO 6', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (619, 1, 2, 'Test SFO 6', sysdate, sysdate, 7, 0, 'Test', '', 'SFO 6', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (620, 1, 618, 13, 618, 0, 0, '620', 0, '/sfo6', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (621, 1, 620, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (622, 1, 620, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (618, 19);

insert into Users_Orgs (userId, organizationId) values (618, 22);
insert into Users_Orgs (userId, organizationId) values (618, 52);

insert into Users_Roles values (618, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (623, 1, sysdate, sysdate, 0, 624, 'test', 0, 0, 'sfo7', 'test.sfo.7@liferay.com', 'Welcome Test SFO 7!', 'Test', '', 'SFO 7', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (624, 1, 2, 'Test SFO 7', sysdate, sysdate, 7, 0, 'Test', '', 'SFO 7', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (625, 1, 623, 13, 623, 0, 0, '625', 0, '/sfo7', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (626, 1, 625, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (627, 1, 625, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (623, 19);

insert into Users_Orgs (userId, organizationId) values (623, 22);
insert into Users_Orgs (userId, organizationId) values (623, 52);

insert into Users_Roles values (623, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (628, 1, sysdate, sysdate, 0, 629, 'test', 0, 0, 'sfo8', 'test.sfo.8@liferay.com', 'Welcome Test SFO 8!', 'Test', '', 'SFO 8', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (629, 1, 2, 'Test SFO 8', sysdate, sysdate, 7, 0, 'Test', '', 'SFO 8', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (630, 1, 628, 13, 628, 0, 0, '630', 0, '/sfo8', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (631, 1, 630, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (632, 1, 630, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (628, 19);

insert into Users_Orgs (userId, organizationId) values (628, 22);
insert into Users_Orgs (userId, organizationId) values (628, 52);

insert into Users_Roles values (628, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (633, 1, sysdate, sysdate, 0, 634, 'test', 0, 0, 'sfo9', 'test.sfo.9@liferay.com', 'Welcome Test SFO 9!', 'Test', '', 'SFO 9', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (634, 1, 2, 'Test SFO 9', sysdate, sysdate, 7, 0, 'Test', '', 'SFO 9', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (635, 1, 633, 13, 633, 0, 0, '635', 0, '/sfo9', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (636, 1, 635, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (637, 1, 635, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (633, 19);

insert into Users_Orgs (userId, organizationId) values (633, 22);
insert into Users_Orgs (userId, organizationId) values (633, 52);

insert into Users_Roles values (633, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (638, 1, sysdate, sysdate, 0, 639, 'test', 0, 0, 'sfo10', 'test.sfo.10@liferay.com', 'Welcome Test SFO 10!', 'Test', '', 'SFO 10', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (639, 1, 2, 'Test SFO 10', sysdate, sysdate, 7, 0, 'Test', '', 'SFO 10', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (640, 1, 638, 13, 638, 0, 0, '640', 0, '/sfo10', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (641, 1, 640, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (642, 1, 640, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (638, 19);

insert into Users_Orgs (userId, organizationId) values (638, 22);
insert into Users_Orgs (userId, organizationId) values (638, 52);

insert into Users_Roles values (638, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (643, 1, sysdate, sysdate, 0, 644, 'test', 0, 0, 'ord1', 'test.ord.1@liferay.com', 'Welcome Test ORD 1!', 'Test', '', 'ORD 1', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (644, 1, 2, 'Test ORD 1', sysdate, sysdate, 7, 0, 'Test', '', 'ORD 1', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (645, 1, 643, 13, 643, 0, 0, '645', 0, '/ord1', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (646, 1, 645, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (647, 1, 645, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (643, 19);

insert into Users_Orgs (userId, organizationId) values (643, 22);
insert into Users_Orgs (userId, organizationId) values (643, 56);

insert into Users_Roles values (643, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (648, 1, sysdate, sysdate, 0, 649, 'test', 0, 0, 'ord2', 'test.ord.2@liferay.com', 'Welcome Test ORD 2!', 'Test', '', 'ORD 2', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (649, 1, 2, 'Test ORD 2', sysdate, sysdate, 7, 0, 'Test', '', 'ORD 2', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (650, 1, 648, 13, 648, 0, 0, '650', 0, '/ord2', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (651, 1, 650, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (652, 1, 650, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (648, 19);

insert into Users_Orgs (userId, organizationId) values (648, 22);
insert into Users_Orgs (userId, organizationId) values (648, 56);

insert into Users_Roles values (648, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (653, 1, sysdate, sysdate, 0, 654, 'test', 0, 0, 'ord3', 'test.ord.3@liferay.com', 'Welcome Test ORD 3!', 'Test', '', 'ORD 3', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (654, 1, 2, 'Test ORD 3', sysdate, sysdate, 7, 0, 'Test', '', 'ORD 3', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (655, 1, 653, 13, 653, 0, 0, '655', 0, '/ord3', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (656, 1, 655, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (657, 1, 655, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (653, 19);

insert into Users_Orgs (userId, organizationId) values (653, 22);
insert into Users_Orgs (userId, organizationId) values (653, 56);

insert into Users_Roles values (653, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (658, 1, sysdate, sysdate, 0, 659, 'test', 0, 0, 'ord4', 'test.ord.4@liferay.com', 'Welcome Test ORD 4!', 'Test', '', 'ORD 4', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (659, 1, 2, 'Test ORD 4', sysdate, sysdate, 7, 0, 'Test', '', 'ORD 4', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (660, 1, 658, 13, 658, 0, 0, '660', 0, '/ord4', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (661, 1, 660, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (662, 1, 660, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (658, 19);

insert into Users_Orgs (userId, organizationId) values (658, 22);
insert into Users_Orgs (userId, organizationId) values (658, 56);

insert into Users_Roles values (658, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (663, 1, sysdate, sysdate, 0, 664, 'test', 0, 0, 'ord5', 'test.ord.5@liferay.com', 'Welcome Test ORD 5!', 'Test', '', 'ORD 5', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (664, 1, 2, 'Test ORD 5', sysdate, sysdate, 7, 0, 'Test', '', 'ORD 5', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (665, 1, 663, 13, 663, 0, 0, '665', 0, '/ord5', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (666, 1, 665, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (667, 1, 665, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (663, 19);

insert into Users_Orgs (userId, organizationId) values (663, 22);
insert into Users_Orgs (userId, organizationId) values (663, 56);

insert into Users_Roles values (663, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (668, 1, sysdate, sysdate, 0, 669, 'test', 0, 0, 'ord6', 'test.ord.6@liferay.com', 'Welcome Test ORD 6!', 'Test', '', 'ORD 6', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (669, 1, 2, 'Test ORD 6', sysdate, sysdate, 7, 0, 'Test', '', 'ORD 6', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (670, 1, 668, 13, 668, 0, 0, '670', 0, '/ord6', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (671, 1, 670, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (672, 1, 670, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (668, 19);

insert into Users_Orgs (userId, organizationId) values (668, 22);
insert into Users_Orgs (userId, organizationId) values (668, 56);

insert into Users_Roles values (668, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (673, 1, sysdate, sysdate, 0, 674, 'test', 0, 0, 'ord7', 'test.ord.7@liferay.com', 'Welcome Test ORD 7!', 'Test', '', 'ORD 7', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (674, 1, 2, 'Test ORD 7', sysdate, sysdate, 7, 0, 'Test', '', 'ORD 7', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (675, 1, 673, 13, 673, 0, 0, '675', 0, '/ord7', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (676, 1, 675, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (677, 1, 675, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (673, 19);

insert into Users_Orgs (userId, organizationId) values (673, 22);
insert into Users_Orgs (userId, organizationId) values (673, 56);

insert into Users_Roles values (673, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (678, 1, sysdate, sysdate, 0, 679, 'test', 0, 0, 'ord8', 'test.ord.8@liferay.com', 'Welcome Test ORD 8!', 'Test', '', 'ORD 8', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (679, 1, 2, 'Test ORD 8', sysdate, sysdate, 7, 0, 'Test', '', 'ORD 8', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (680, 1, 678, 13, 678, 0, 0, '680', 0, '/ord8', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (681, 1, 680, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (682, 1, 680, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (678, 19);

insert into Users_Orgs (userId, organizationId) values (678, 22);
insert into Users_Orgs (userId, organizationId) values (678, 56);

insert into Users_Roles values (678, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (683, 1, sysdate, sysdate, 0, 684, 'test', 0, 0, 'ord9', 'test.ord.9@liferay.com', 'Welcome Test ORD 9!', 'Test', '', 'ORD 9', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (684, 1, 2, 'Test ORD 9', sysdate, sysdate, 7, 0, 'Test', '', 'ORD 9', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (685, 1, 683, 13, 683, 0, 0, '685', 0, '/ord9', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (686, 1, 685, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (687, 1, 685, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (683, 19);

insert into Users_Orgs (userId, organizationId) values (683, 22);
insert into Users_Orgs (userId, organizationId) values (683, 56);

insert into Users_Roles values (683, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (688, 1, sysdate, sysdate, 0, 689, 'test', 0, 0, 'ord10', 'test.ord.10@liferay.com', 'Welcome Test ORD 10!', 'Test', '', 'ORD 10', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (689, 1, 2, 'Test ORD 10', sysdate, sysdate, 7, 0, 'Test', '', 'ORD 10', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (690, 1, 688, 13, 688, 0, 0, '690', 0, '/ord10', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (691, 1, 690, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (692, 1, 690, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (688, 19);

insert into Users_Orgs (userId, organizationId) values (688, 22);
insert into Users_Orgs (userId, organizationId) values (688, 56);

insert into Users_Roles values (688, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (693, 1, sysdate, sysdate, 0, 694, 'test', 0, 0, 'nyc1', 'test.nyc.1@liferay.com', 'Welcome Test NYC 1!', 'Test', '', 'NYC 1', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (694, 1, 2, 'Test NYC 1', sysdate, sysdate, 7, 0, 'Test', '', 'NYC 1', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (695, 1, 693, 13, 693, 0, 0, '695', 0, '/nyc1', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (696, 1, 695, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (697, 1, 695, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (693, 19);

insert into Users_Orgs (userId, organizationId) values (693, 22);
insert into Users_Orgs (userId, organizationId) values (693, 60);

insert into Users_Roles values (693, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (698, 1, sysdate, sysdate, 0, 699, 'test', 0, 0, 'nyc2', 'test.nyc.2@liferay.com', 'Welcome Test NYC 2!', 'Test', '', 'NYC 2', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (699, 1, 2, 'Test NYC 2', sysdate, sysdate, 7, 0, 'Test', '', 'NYC 2', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (700, 1, 698, 13, 698, 0, 0, '700', 0, '/nyc2', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (701, 1, 700, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (702, 1, 700, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (698, 19);

insert into Users_Orgs (userId, organizationId) values (698, 22);
insert into Users_Orgs (userId, organizationId) values (698, 60);

insert into Users_Roles values (698, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (703, 1, sysdate, sysdate, 0, 704, 'test', 0, 0, 'nyc3', 'test.nyc.3@liferay.com', 'Welcome Test NYC 3!', 'Test', '', 'NYC 3', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (704, 1, 2, 'Test NYC 3', sysdate, sysdate, 7, 0, 'Test', '', 'NYC 3', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (705, 1, 703, 13, 703, 0, 0, '705', 0, '/nyc3', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (706, 1, 705, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (707, 1, 705, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (703, 19);

insert into Users_Orgs (userId, organizationId) values (703, 22);
insert into Users_Orgs (userId, organizationId) values (703, 60);

insert into Users_Roles values (703, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (708, 1, sysdate, sysdate, 0, 709, 'test', 0, 0, 'nyc4', 'test.nyc.4@liferay.com', 'Welcome Test NYC 4!', 'Test', '', 'NYC 4', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (709, 1, 2, 'Test NYC 4', sysdate, sysdate, 7, 0, 'Test', '', 'NYC 4', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (710, 1, 708, 13, 708, 0, 0, '710', 0, '/nyc4', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (711, 1, 710, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (712, 1, 710, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (708, 19);

insert into Users_Orgs (userId, organizationId) values (708, 22);
insert into Users_Orgs (userId, organizationId) values (708, 60);

insert into Users_Roles values (708, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (713, 1, sysdate, sysdate, 0, 714, 'test', 0, 0, 'nyc5', 'test.nyc.5@liferay.com', 'Welcome Test NYC 5!', 'Test', '', 'NYC 5', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (714, 1, 2, 'Test NYC 5', sysdate, sysdate, 7, 0, 'Test', '', 'NYC 5', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (715, 1, 713, 13, 713, 0, 0, '715', 0, '/nyc5', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (716, 1, 715, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (717, 1, 715, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (713, 19);

insert into Users_Orgs (userId, organizationId) values (713, 22);
insert into Users_Orgs (userId, organizationId) values (713, 60);

insert into Users_Roles values (713, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (718, 1, sysdate, sysdate, 0, 719, 'test', 0, 0, 'nyc6', 'test.nyc.6@liferay.com', 'Welcome Test NYC 6!', 'Test', '', 'NYC 6', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (719, 1, 2, 'Test NYC 6', sysdate, sysdate, 7, 0, 'Test', '', 'NYC 6', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (720, 1, 718, 13, 718, 0, 0, '720', 0, '/nyc6', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (721, 1, 720, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (722, 1, 720, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (718, 19);

insert into Users_Orgs (userId, organizationId) values (718, 22);
insert into Users_Orgs (userId, organizationId) values (718, 60);

insert into Users_Roles values (718, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (723, 1, sysdate, sysdate, 0, 724, 'test', 0, 0, 'nyc7', 'test.nyc.7@liferay.com', 'Welcome Test NYC 7!', 'Test', '', 'NYC 7', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (724, 1, 2, 'Test NYC 7', sysdate, sysdate, 7, 0, 'Test', '', 'NYC 7', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (725, 1, 723, 13, 723, 0, 0, '725', 0, '/nyc7', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (726, 1, 725, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (727, 1, 725, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (723, 19);

insert into Users_Orgs (userId, organizationId) values (723, 22);
insert into Users_Orgs (userId, organizationId) values (723, 60);

insert into Users_Roles values (723, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (728, 1, sysdate, sysdate, 0, 729, 'test', 0, 0, 'nyc8', 'test.nyc.8@liferay.com', 'Welcome Test NYC 8!', 'Test', '', 'NYC 8', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (729, 1, 2, 'Test NYC 8', sysdate, sysdate, 7, 0, 'Test', '', 'NYC 8', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (730, 1, 728, 13, 728, 0, 0, '730', 0, '/nyc8', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (731, 1, 730, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (732, 1, 730, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (728, 19);

insert into Users_Orgs (userId, organizationId) values (728, 22);
insert into Users_Orgs (userId, organizationId) values (728, 60);

insert into Users_Roles values (728, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (733, 1, sysdate, sysdate, 0, 734, 'test', 0, 0, 'nyc9', 'test.nyc.9@liferay.com', 'Welcome Test NYC 9!', 'Test', '', 'NYC 9', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (734, 1, 2, 'Test NYC 9', sysdate, sysdate, 7, 0, 'Test', '', 'NYC 9', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (735, 1, 733, 13, 733, 0, 0, '735', 0, '/nyc9', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (736, 1, 735, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (737, 1, 735, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (733, 19);

insert into Users_Orgs (userId, organizationId) values (733, 22);
insert into Users_Orgs (userId, organizationId) values (733, 60);

insert into Users_Roles values (733, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (738, 1, sysdate, sysdate, 0, 739, 'test', 0, 0, 'nyc10', 'test.nyc.10@liferay.com', 'Welcome Test NYC 10!', 'Test', '', 'NYC 10', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (739, 1, 2, 'Test NYC 10', sysdate, sysdate, 7, 0, 'Test', '', 'NYC 10', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (740, 1, 738, 13, 738, 0, 0, '740', 0, '/nyc10', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (741, 1, 740, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (742, 1, 740, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (738, 19);

insert into Users_Orgs (userId, organizationId) values (738, 22);
insert into Users_Orgs (userId, organizationId) values (738, 60);

insert into Users_Roles values (738, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (743, 1, sysdate, sysdate, 0, 744, 'test', 0, 0, 'gru1', 'test.gru.1@liferay.com', 'Welcome Test GRU 1!', 'Test', '', 'GRU 1', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (744, 1, 2, 'Test GRU 1', sysdate, sysdate, 7, 0, 'Test', '', 'GRU 1', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (745, 1, 743, 13, 743, 0, 0, '745', 0, '/gru1', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (746, 1, 745, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (747, 1, 745, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (743, 19);

insert into Users_Orgs (userId, organizationId) values (743, 22);
insert into Users_Orgs (userId, organizationId) values (743, 64);

insert into Users_Roles values (743, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (748, 1, sysdate, sysdate, 0, 749, 'test', 0, 0, 'gru2', 'test.gru.2@liferay.com', 'Welcome Test GRU 2!', 'Test', '', 'GRU 2', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (749, 1, 2, 'Test GRU 2', sysdate, sysdate, 7, 0, 'Test', '', 'GRU 2', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (750, 1, 748, 13, 748, 0, 0, '750', 0, '/gru2', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (751, 1, 750, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (752, 1, 750, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (748, 19);

insert into Users_Orgs (userId, organizationId) values (748, 22);
insert into Users_Orgs (userId, organizationId) values (748, 64);

insert into Users_Roles values (748, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (753, 1, sysdate, sysdate, 0, 754, 'test', 0, 0, 'gru3', 'test.gru.3@liferay.com', 'Welcome Test GRU 3!', 'Test', '', 'GRU 3', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (754, 1, 2, 'Test GRU 3', sysdate, sysdate, 7, 0, 'Test', '', 'GRU 3', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (755, 1, 753, 13, 753, 0, 0, '755', 0, '/gru3', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (756, 1, 755, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (757, 1, 755, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (753, 19);

insert into Users_Orgs (userId, organizationId) values (753, 22);
insert into Users_Orgs (userId, organizationId) values (753, 64);

insert into Users_Roles values (753, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (758, 1, sysdate, sysdate, 0, 759, 'test', 0, 0, 'gru4', 'test.gru.4@liferay.com', 'Welcome Test GRU 4!', 'Test', '', 'GRU 4', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (759, 1, 2, 'Test GRU 4', sysdate, sysdate, 7, 0, 'Test', '', 'GRU 4', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (760, 1, 758, 13, 758, 0, 0, '760', 0, '/gru4', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (761, 1, 760, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (762, 1, 760, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (758, 19);

insert into Users_Orgs (userId, organizationId) values (758, 22);
insert into Users_Orgs (userId, organizationId) values (758, 64);

insert into Users_Roles values (758, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (763, 1, sysdate, sysdate, 0, 764, 'test', 0, 0, 'gru5', 'test.gru.5@liferay.com', 'Welcome Test GRU 5!', 'Test', '', 'GRU 5', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (764, 1, 2, 'Test GRU 5', sysdate, sysdate, 7, 0, 'Test', '', 'GRU 5', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (765, 1, 763, 13, 763, 0, 0, '765', 0, '/gru5', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (766, 1, 765, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (767, 1, 765, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (763, 19);

insert into Users_Orgs (userId, organizationId) values (763, 22);
insert into Users_Orgs (userId, organizationId) values (763, 64);

insert into Users_Roles values (763, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (768, 1, sysdate, sysdate, 0, 769, 'test', 0, 0, 'gru6', 'test.gru.6@liferay.com', 'Welcome Test GRU 6!', 'Test', '', 'GRU 6', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (769, 1, 2, 'Test GRU 6', sysdate, sysdate, 7, 0, 'Test', '', 'GRU 6', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (770, 1, 768, 13, 768, 0, 0, '770', 0, '/gru6', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (771, 1, 770, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (772, 1, 770, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (768, 19);

insert into Users_Orgs (userId, organizationId) values (768, 22);
insert into Users_Orgs (userId, organizationId) values (768, 64);

insert into Users_Roles values (768, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (773, 1, sysdate, sysdate, 0, 774, 'test', 0, 0, 'gru7', 'test.gru.7@liferay.com', 'Welcome Test GRU 7!', 'Test', '', 'GRU 7', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (774, 1, 2, 'Test GRU 7', sysdate, sysdate, 7, 0, 'Test', '', 'GRU 7', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (775, 1, 773, 13, 773, 0, 0, '775', 0, '/gru7', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (776, 1, 775, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (777, 1, 775, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (773, 19);

insert into Users_Orgs (userId, organizationId) values (773, 22);
insert into Users_Orgs (userId, organizationId) values (773, 64);

insert into Users_Roles values (773, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (778, 1, sysdate, sysdate, 0, 779, 'test', 0, 0, 'gru8', 'test.gru.8@liferay.com', 'Welcome Test GRU 8!', 'Test', '', 'GRU 8', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (779, 1, 2, 'Test GRU 8', sysdate, sysdate, 7, 0, 'Test', '', 'GRU 8', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (780, 1, 778, 13, 778, 0, 0, '780', 0, '/gru8', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (781, 1, 780, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (782, 1, 780, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (778, 19);

insert into Users_Orgs (userId, organizationId) values (778, 22);
insert into Users_Orgs (userId, organizationId) values (778, 64);

insert into Users_Roles values (778, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (783, 1, sysdate, sysdate, 0, 784, 'test', 0, 0, 'gru9', 'test.gru.9@liferay.com', 'Welcome Test GRU 9!', 'Test', '', 'GRU 9', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (784, 1, 2, 'Test GRU 9', sysdate, sysdate, 7, 0, 'Test', '', 'GRU 9', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (785, 1, 783, 13, 783, 0, 0, '785', 0, '/gru9', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (786, 1, 785, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (787, 1, 785, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (783, 19);

insert into Users_Orgs (userId, organizationId) values (783, 22);
insert into Users_Orgs (userId, organizationId) values (783, 64);

insert into Users_Roles values (783, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (788, 1, sysdate, sysdate, 0, 789, 'test', 0, 0, 'gru10', 'test.gru.10@liferay.com', 'Welcome Test GRU 10!', 'Test', '', 'GRU 10', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (789, 1, 2, 'Test GRU 10', sysdate, sysdate, 7, 0, 'Test', '', 'GRU 10', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (790, 1, 788, 13, 788, 0, 0, '790', 0, '/gru10', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (791, 1, 790, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (792, 1, 790, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (788, 19);

insert into Users_Orgs (userId, organizationId) values (788, 22);
insert into Users_Orgs (userId, organizationId) values (788, 64);

insert into Users_Roles values (788, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (793, 1, sysdate, sysdate, 0, 794, 'test', 0, 0, 'fra1', 'test.fra.1@liferay.com', 'Welcome Test FRA 1!', 'Test', '', 'FRA 1', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (794, 1, 2, 'Test FRA 1', sysdate, sysdate, 7, 0, 'Test', '', 'FRA 1', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (795, 1, 793, 13, 793, 0, 0, '795', 0, '/fra1', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (796, 1, 795, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (797, 1, 795, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (793, 19);

insert into Users_Orgs (userId, organizationId) values (793, 22);
insert into Users_Orgs (userId, organizationId) values (793, 68);

insert into Users_Roles values (793, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (798, 1, sysdate, sysdate, 0, 799, 'test', 0, 0, 'fra2', 'test.fra.2@liferay.com', 'Welcome Test FRA 2!', 'Test', '', 'FRA 2', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (799, 1, 2, 'Test FRA 2', sysdate, sysdate, 7, 0, 'Test', '', 'FRA 2', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (800, 1, 798, 13, 798, 0, 0, '800', 0, '/fra2', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (801, 1, 800, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (802, 1, 800, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (798, 19);

insert into Users_Orgs (userId, organizationId) values (798, 22);
insert into Users_Orgs (userId, organizationId) values (798, 68);

insert into Users_Roles values (798, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (803, 1, sysdate, sysdate, 0, 804, 'test', 0, 0, 'fra3', 'test.fra.3@liferay.com', 'Welcome Test FRA 3!', 'Test', '', 'FRA 3', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (804, 1, 2, 'Test FRA 3', sysdate, sysdate, 7, 0, 'Test', '', 'FRA 3', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (805, 1, 803, 13, 803, 0, 0, '805', 0, '/fra3', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (806, 1, 805, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (807, 1, 805, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (803, 19);

insert into Users_Orgs (userId, organizationId) values (803, 22);
insert into Users_Orgs (userId, organizationId) values (803, 68);

insert into Users_Roles values (803, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (808, 1, sysdate, sysdate, 0, 809, 'test', 0, 0, 'fra4', 'test.fra.4@liferay.com', 'Welcome Test FRA 4!', 'Test', '', 'FRA 4', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (809, 1, 2, 'Test FRA 4', sysdate, sysdate, 7, 0, 'Test', '', 'FRA 4', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (810, 1, 808, 13, 808, 0, 0, '810', 0, '/fra4', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (811, 1, 810, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (812, 1, 810, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (808, 19);

insert into Users_Orgs (userId, organizationId) values (808, 22);
insert into Users_Orgs (userId, organizationId) values (808, 68);

insert into Users_Roles values (808, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (813, 1, sysdate, sysdate, 0, 814, 'test', 0, 0, 'fra5', 'test.fra.5@liferay.com', 'Welcome Test FRA 5!', 'Test', '', 'FRA 5', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (814, 1, 2, 'Test FRA 5', sysdate, sysdate, 7, 0, 'Test', '', 'FRA 5', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (815, 1, 813, 13, 813, 0, 0, '815', 0, '/fra5', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (816, 1, 815, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (817, 1, 815, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (813, 19);

insert into Users_Orgs (userId, organizationId) values (813, 22);
insert into Users_Orgs (userId, organizationId) values (813, 68);

insert into Users_Roles values (813, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (818, 1, sysdate, sysdate, 0, 819, 'test', 0, 0, 'fra6', 'test.fra.6@liferay.com', 'Welcome Test FRA 6!', 'Test', '', 'FRA 6', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (819, 1, 2, 'Test FRA 6', sysdate, sysdate, 7, 0, 'Test', '', 'FRA 6', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (820, 1, 818, 13, 818, 0, 0, '820', 0, '/fra6', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (821, 1, 820, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (822, 1, 820, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (818, 19);

insert into Users_Orgs (userId, organizationId) values (818, 22);
insert into Users_Orgs (userId, organizationId) values (818, 68);

insert into Users_Roles values (818, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (823, 1, sysdate, sysdate, 0, 824, 'test', 0, 0, 'fra7', 'test.fra.7@liferay.com', 'Welcome Test FRA 7!', 'Test', '', 'FRA 7', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (824, 1, 2, 'Test FRA 7', sysdate, sysdate, 7, 0, 'Test', '', 'FRA 7', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (825, 1, 823, 13, 823, 0, 0, '825', 0, '/fra7', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (826, 1, 825, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (827, 1, 825, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (823, 19);

insert into Users_Orgs (userId, organizationId) values (823, 22);
insert into Users_Orgs (userId, organizationId) values (823, 68);

insert into Users_Roles values (823, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (828, 1, sysdate, sysdate, 0, 829, 'test', 0, 0, 'fra8', 'test.fra.8@liferay.com', 'Welcome Test FRA 8!', 'Test', '', 'FRA 8', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (829, 1, 2, 'Test FRA 8', sysdate, sysdate, 7, 0, 'Test', '', 'FRA 8', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (830, 1, 828, 13, 828, 0, 0, '830', 0, '/fra8', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (831, 1, 830, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (832, 1, 830, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (828, 19);

insert into Users_Orgs (userId, organizationId) values (828, 22);
insert into Users_Orgs (userId, organizationId) values (828, 68);

insert into Users_Roles values (828, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (833, 1, sysdate, sysdate, 0, 834, 'test', 0, 0, 'fra9', 'test.fra.9@liferay.com', 'Welcome Test FRA 9!', 'Test', '', 'FRA 9', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (834, 1, 2, 'Test FRA 9', sysdate, sysdate, 7, 0, 'Test', '', 'FRA 9', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (835, 1, 833, 13, 833, 0, 0, '835', 0, '/fra9', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (836, 1, 835, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (837, 1, 835, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (833, 19);

insert into Users_Orgs (userId, organizationId) values (833, 22);
insert into Users_Orgs (userId, organizationId) values (833, 68);

insert into Users_Roles values (833, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (838, 1, sysdate, sysdate, 0, 839, 'test', 0, 0, 'fra10', 'test.fra.10@liferay.com', 'Welcome Test FRA 10!', 'Test', '', 'FRA 10', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (839, 1, 2, 'Test FRA 10', sysdate, sysdate, 7, 0, 'Test', '', 'FRA 10', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (840, 1, 838, 13, 838, 0, 0, '840', 0, '/fra10', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (841, 1, 840, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (842, 1, 840, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (838, 19);

insert into Users_Orgs (userId, organizationId) values (838, 22);
insert into Users_Orgs (userId, organizationId) values (838, 68);

insert into Users_Roles values (838, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (843, 1, sysdate, sysdate, 0, 844, 'test', 0, 0, 'mad1', 'test.mad.1@liferay.com', 'Welcome Test MAD 1!', 'Test', '', 'MAD 1', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (844, 1, 2, 'Test MAD 1', sysdate, sysdate, 7, 0, 'Test', '', 'MAD 1', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (845, 1, 843, 13, 843, 0, 0, '845', 0, '/mad1', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (846, 1, 845, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (847, 1, 845, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (843, 19);

insert into Users_Orgs (userId, organizationId) values (843, 22);
insert into Users_Orgs (userId, organizationId) values (843, 72);

insert into Users_Roles values (843, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (848, 1, sysdate, sysdate, 0, 849, 'test', 0, 0, 'mad2', 'test.mad.2@liferay.com', 'Welcome Test MAD 2!', 'Test', '', 'MAD 2', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (849, 1, 2, 'Test MAD 2', sysdate, sysdate, 7, 0, 'Test', '', 'MAD 2', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (850, 1, 848, 13, 848, 0, 0, '850', 0, '/mad2', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (851, 1, 850, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (852, 1, 850, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (848, 19);

insert into Users_Orgs (userId, organizationId) values (848, 22);
insert into Users_Orgs (userId, organizationId) values (848, 72);

insert into Users_Roles values (848, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (853, 1, sysdate, sysdate, 0, 854, 'test', 0, 0, 'mad3', 'test.mad.3@liferay.com', 'Welcome Test MAD 3!', 'Test', '', 'MAD 3', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (854, 1, 2, 'Test MAD 3', sysdate, sysdate, 7, 0, 'Test', '', 'MAD 3', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (855, 1, 853, 13, 853, 0, 0, '855', 0, '/mad3', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (856, 1, 855, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (857, 1, 855, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (853, 19);

insert into Users_Orgs (userId, organizationId) values (853, 22);
insert into Users_Orgs (userId, organizationId) values (853, 72);

insert into Users_Roles values (853, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (858, 1, sysdate, sysdate, 0, 859, 'test', 0, 0, 'mad4', 'test.mad.4@liferay.com', 'Welcome Test MAD 4!', 'Test', '', 'MAD 4', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (859, 1, 2, 'Test MAD 4', sysdate, sysdate, 7, 0, 'Test', '', 'MAD 4', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (860, 1, 858, 13, 858, 0, 0, '860', 0, '/mad4', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (861, 1, 860, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (862, 1, 860, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (858, 19);

insert into Users_Orgs (userId, organizationId) values (858, 22);
insert into Users_Orgs (userId, organizationId) values (858, 72);

insert into Users_Roles values (858, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (863, 1, sysdate, sysdate, 0, 864, 'test', 0, 0, 'mad5', 'test.mad.5@liferay.com', 'Welcome Test MAD 5!', 'Test', '', 'MAD 5', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (864, 1, 2, 'Test MAD 5', sysdate, sysdate, 7, 0, 'Test', '', 'MAD 5', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (865, 1, 863, 13, 863, 0, 0, '865', 0, '/mad5', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (866, 1, 865, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (867, 1, 865, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (863, 19);

insert into Users_Orgs (userId, organizationId) values (863, 22);
insert into Users_Orgs (userId, organizationId) values (863, 72);

insert into Users_Roles values (863, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (868, 1, sysdate, sysdate, 0, 869, 'test', 0, 0, 'mad6', 'test.mad.6@liferay.com', 'Welcome Test MAD 6!', 'Test', '', 'MAD 6', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (869, 1, 2, 'Test MAD 6', sysdate, sysdate, 7, 0, 'Test', '', 'MAD 6', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (870, 1, 868, 13, 868, 0, 0, '870', 0, '/mad6', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (871, 1, 870, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (872, 1, 870, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (868, 19);

insert into Users_Orgs (userId, organizationId) values (868, 22);
insert into Users_Orgs (userId, organizationId) values (868, 72);

insert into Users_Roles values (868, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (873, 1, sysdate, sysdate, 0, 874, 'test', 0, 0, 'mad7', 'test.mad.7@liferay.com', 'Welcome Test MAD 7!', 'Test', '', 'MAD 7', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (874, 1, 2, 'Test MAD 7', sysdate, sysdate, 7, 0, 'Test', '', 'MAD 7', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (875, 1, 873, 13, 873, 0, 0, '875', 0, '/mad7', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (876, 1, 875, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (877, 1, 875, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (873, 19);

insert into Users_Orgs (userId, organizationId) values (873, 22);
insert into Users_Orgs (userId, organizationId) values (873, 72);

insert into Users_Roles values (873, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (878, 1, sysdate, sysdate, 0, 879, 'test', 0, 0, 'mad8', 'test.mad.8@liferay.com', 'Welcome Test MAD 8!', 'Test', '', 'MAD 8', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (879, 1, 2, 'Test MAD 8', sysdate, sysdate, 7, 0, 'Test', '', 'MAD 8', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (880, 1, 878, 13, 878, 0, 0, '880', 0, '/mad8', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (881, 1, 880, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (882, 1, 880, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (878, 19);

insert into Users_Orgs (userId, organizationId) values (878, 22);
insert into Users_Orgs (userId, organizationId) values (878, 72);

insert into Users_Roles values (878, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (883, 1, sysdate, sysdate, 0, 884, 'test', 0, 0, 'mad9', 'test.mad.9@liferay.com', 'Welcome Test MAD 9!', 'Test', '', 'MAD 9', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (884, 1, 2, 'Test MAD 9', sysdate, sysdate, 7, 0, 'Test', '', 'MAD 9', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (885, 1, 883, 13, 883, 0, 0, '885', 0, '/mad9', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (886, 1, 885, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (887, 1, 885, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (883, 19);

insert into Users_Orgs (userId, organizationId) values (883, 22);
insert into Users_Orgs (userId, organizationId) values (883, 72);

insert into Users_Roles values (883, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (888, 1, sysdate, sysdate, 0, 889, 'test', 0, 0, 'mad10', 'test.mad.10@liferay.com', 'Welcome Test MAD 10!', 'Test', '', 'MAD 10', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (889, 1, 2, 'Test MAD 10', sysdate, sysdate, 7, 0, 'Test', '', 'MAD 10', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (890, 1, 888, 13, 888, 0, 0, '890', 0, '/mad10', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (891, 1, 890, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (892, 1, 890, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (888, 19);

insert into Users_Orgs (userId, organizationId) values (888, 22);
insert into Users_Orgs (userId, organizationId) values (888, 72);

insert into Users_Roles values (888, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (893, 1, sysdate, sysdate, 0, 894, 'test', 0, 0, 'dlc1', 'test.dlc.1@liferay.com', 'Welcome Test DLC 1!', 'Test', '', 'DLC 1', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (894, 1, 2, 'Test DLC 1', sysdate, sysdate, 7, 0, 'Test', '', 'DLC 1', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (895, 1, 893, 13, 893, 0, 0, '895', 0, '/dlc1', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (896, 1, 895, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (897, 1, 895, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (893, 19);

insert into Users_Orgs (userId, organizationId) values (893, 22);
insert into Users_Orgs (userId, organizationId) values (893, 76);

insert into Users_Roles values (893, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (898, 1, sysdate, sysdate, 0, 899, 'test', 0, 0, 'dlc2', 'test.dlc.2@liferay.com', 'Welcome Test DLC 2!', 'Test', '', 'DLC 2', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (899, 1, 2, 'Test DLC 2', sysdate, sysdate, 7, 0, 'Test', '', 'DLC 2', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (900, 1, 898, 13, 898, 0, 0, '900', 0, '/dlc2', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (901, 1, 900, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (902, 1, 900, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (898, 19);

insert into Users_Orgs (userId, organizationId) values (898, 22);
insert into Users_Orgs (userId, organizationId) values (898, 76);

insert into Users_Roles values (898, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (903, 1, sysdate, sysdate, 0, 904, 'test', 0, 0, 'dlc3', 'test.dlc.3@liferay.com', 'Welcome Test DLC 3!', 'Test', '', 'DLC 3', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (904, 1, 2, 'Test DLC 3', sysdate, sysdate, 7, 0, 'Test', '', 'DLC 3', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (905, 1, 903, 13, 903, 0, 0, '905', 0, '/dlc3', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (906, 1, 905, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (907, 1, 905, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (903, 19);

insert into Users_Orgs (userId, organizationId) values (903, 22);
insert into Users_Orgs (userId, organizationId) values (903, 76);

insert into Users_Roles values (903, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (908, 1, sysdate, sysdate, 0, 909, 'test', 0, 0, 'dlc4', 'test.dlc.4@liferay.com', 'Welcome Test DLC 4!', 'Test', '', 'DLC 4', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (909, 1, 2, 'Test DLC 4', sysdate, sysdate, 7, 0, 'Test', '', 'DLC 4', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (910, 1, 908, 13, 908, 0, 0, '910', 0, '/dlc4', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (911, 1, 910, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (912, 1, 910, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (908, 19);

insert into Users_Orgs (userId, organizationId) values (908, 22);
insert into Users_Orgs (userId, organizationId) values (908, 76);

insert into Users_Roles values (908, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (913, 1, sysdate, sysdate, 0, 914, 'test', 0, 0, 'dlc5', 'test.dlc.5@liferay.com', 'Welcome Test DLC 5!', 'Test', '', 'DLC 5', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (914, 1, 2, 'Test DLC 5', sysdate, sysdate, 7, 0, 'Test', '', 'DLC 5', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (915, 1, 913, 13, 913, 0, 0, '915', 0, '/dlc5', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (916, 1, 915, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (917, 1, 915, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (913, 19);

insert into Users_Orgs (userId, organizationId) values (913, 22);
insert into Users_Orgs (userId, organizationId) values (913, 76);

insert into Users_Roles values (913, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (918, 1, sysdate, sysdate, 0, 919, 'test', 0, 0, 'dlc6', 'test.dlc.6@liferay.com', 'Welcome Test DLC 6!', 'Test', '', 'DLC 6', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (919, 1, 2, 'Test DLC 6', sysdate, sysdate, 7, 0, 'Test', '', 'DLC 6', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (920, 1, 918, 13, 918, 0, 0, '920', 0, '/dlc6', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (921, 1, 920, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (922, 1, 920, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (918, 19);

insert into Users_Orgs (userId, organizationId) values (918, 22);
insert into Users_Orgs (userId, organizationId) values (918, 76);

insert into Users_Roles values (918, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (923, 1, sysdate, sysdate, 0, 924, 'test', 0, 0, 'dlc7', 'test.dlc.7@liferay.com', 'Welcome Test DLC 7!', 'Test', '', 'DLC 7', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (924, 1, 2, 'Test DLC 7', sysdate, sysdate, 7, 0, 'Test', '', 'DLC 7', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (925, 1, 923, 13, 923, 0, 0, '925', 0, '/dlc7', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (926, 1, 925, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (927, 1, 925, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (923, 19);

insert into Users_Orgs (userId, organizationId) values (923, 22);
insert into Users_Orgs (userId, organizationId) values (923, 76);

insert into Users_Roles values (923, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (928, 1, sysdate, sysdate, 0, 929, 'test', 0, 0, 'dlc8', 'test.dlc.8@liferay.com', 'Welcome Test DLC 8!', 'Test', '', 'DLC 8', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (929, 1, 2, 'Test DLC 8', sysdate, sysdate, 7, 0, 'Test', '', 'DLC 8', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (930, 1, 928, 13, 928, 0, 0, '930', 0, '/dlc8', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (931, 1, 930, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (932, 1, 930, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (928, 19);

insert into Users_Orgs (userId, organizationId) values (928, 22);
insert into Users_Orgs (userId, organizationId) values (928, 76);

insert into Users_Roles values (928, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (933, 1, sysdate, sysdate, 0, 934, 'test', 0, 0, 'dlc9', 'test.dlc.9@liferay.com', 'Welcome Test DLC 9!', 'Test', '', 'DLC 9', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (934, 1, 2, 'Test DLC 9', sysdate, sysdate, 7, 0, 'Test', '', 'DLC 9', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (935, 1, 933, 13, 933, 0, 0, '935', 0, '/dlc9', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (936, 1, 935, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (937, 1, 935, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (933, 19);

insert into Users_Orgs (userId, organizationId) values (933, 22);
insert into Users_Orgs (userId, organizationId) values (933, 76);

insert into Users_Roles values (933, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (938, 1, sysdate, sysdate, 0, 939, 'test', 0, 0, 'dlc10', 'test.dlc.10@liferay.com', 'Welcome Test DLC 10!', 'Test', '', 'DLC 10', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (939, 1, 2, 'Test DLC 10', sysdate, sysdate, 7, 0, 'Test', '', 'DLC 10', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (940, 1, 938, 13, 938, 0, 0, '940', 0, '/dlc10', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (941, 1, 940, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (942, 1, 940, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (938, 19);

insert into Users_Orgs (userId, organizationId) values (938, 22);
insert into Users_Orgs (userId, organizationId) values (938, 76);

insert into Users_Roles values (938, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (943, 1, sysdate, sysdate, 0, 944, 'test', 0, 0, 'hkg1', 'test.hkg.1@liferay.com', 'Welcome Test HKG 1!', 'Test', '', 'HKG 1', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (944, 1, 2, 'Test HKG 1', sysdate, sysdate, 7, 0, 'Test', '', 'HKG 1', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (945, 1, 943, 13, 943, 0, 0, '945', 0, '/hkg1', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (946, 1, 945, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (947, 1, 945, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (943, 19);

insert into Users_Orgs (userId, organizationId) values (943, 22);
insert into Users_Orgs (userId, organizationId) values (943, 80);

insert into Users_Roles values (943, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (948, 1, sysdate, sysdate, 0, 949, 'test', 0, 0, 'hkg2', 'test.hkg.2@liferay.com', 'Welcome Test HKG 2!', 'Test', '', 'HKG 2', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (949, 1, 2, 'Test HKG 2', sysdate, sysdate, 7, 0, 'Test', '', 'HKG 2', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (950, 1, 948, 13, 948, 0, 0, '950', 0, '/hkg2', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (951, 1, 950, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (952, 1, 950, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (948, 19);

insert into Users_Orgs (userId, organizationId) values (948, 22);
insert into Users_Orgs (userId, organizationId) values (948, 80);

insert into Users_Roles values (948, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (953, 1, sysdate, sysdate, 0, 954, 'test', 0, 0, 'hkg3', 'test.hkg.3@liferay.com', 'Welcome Test HKG 3!', 'Test', '', 'HKG 3', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (954, 1, 2, 'Test HKG 3', sysdate, sysdate, 7, 0, 'Test', '', 'HKG 3', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (955, 1, 953, 13, 953, 0, 0, '955', 0, '/hkg3', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (956, 1, 955, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (957, 1, 955, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (953, 19);

insert into Users_Orgs (userId, organizationId) values (953, 22);
insert into Users_Orgs (userId, organizationId) values (953, 80);

insert into Users_Roles values (953, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (958, 1, sysdate, sysdate, 0, 959, 'test', 0, 0, 'hkg4', 'test.hkg.4@liferay.com', 'Welcome Test HKG 4!', 'Test', '', 'HKG 4', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (959, 1, 2, 'Test HKG 4', sysdate, sysdate, 7, 0, 'Test', '', 'HKG 4', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (960, 1, 958, 13, 958, 0, 0, '960', 0, '/hkg4', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (961, 1, 960, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (962, 1, 960, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (958, 19);

insert into Users_Orgs (userId, organizationId) values (958, 22);
insert into Users_Orgs (userId, organizationId) values (958, 80);

insert into Users_Roles values (958, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (963, 1, sysdate, sysdate, 0, 964, 'test', 0, 0, 'hkg5', 'test.hkg.5@liferay.com', 'Welcome Test HKG 5!', 'Test', '', 'HKG 5', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (964, 1, 2, 'Test HKG 5', sysdate, sysdate, 7, 0, 'Test', '', 'HKG 5', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (965, 1, 963, 13, 963, 0, 0, '965', 0, '/hkg5', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (966, 1, 965, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (967, 1, 965, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (963, 19);

insert into Users_Orgs (userId, organizationId) values (963, 22);
insert into Users_Orgs (userId, organizationId) values (963, 80);

insert into Users_Roles values (963, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (968, 1, sysdate, sysdate, 0, 969, 'test', 0, 0, 'hkg6', 'test.hkg.6@liferay.com', 'Welcome Test HKG 6!', 'Test', '', 'HKG 6', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (969, 1, 2, 'Test HKG 6', sysdate, sysdate, 7, 0, 'Test', '', 'HKG 6', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (970, 1, 968, 13, 968, 0, 0, '970', 0, '/hkg6', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (971, 1, 970, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (972, 1, 970, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (968, 19);

insert into Users_Orgs (userId, organizationId) values (968, 22);
insert into Users_Orgs (userId, organizationId) values (968, 80);

insert into Users_Roles values (968, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (973, 1, sysdate, sysdate, 0, 974, 'test', 0, 0, 'hkg7', 'test.hkg.7@liferay.com', 'Welcome Test HKG 7!', 'Test', '', 'HKG 7', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (974, 1, 2, 'Test HKG 7', sysdate, sysdate, 7, 0, 'Test', '', 'HKG 7', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (975, 1, 973, 13, 973, 0, 0, '975', 0, '/hkg7', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (976, 1, 975, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (977, 1, 975, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (973, 19);

insert into Users_Orgs (userId, organizationId) values (973, 22);
insert into Users_Orgs (userId, organizationId) values (973, 80);

insert into Users_Roles values (973, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (978, 1, sysdate, sysdate, 0, 979, 'test', 0, 0, 'hkg8', 'test.hkg.8@liferay.com', 'Welcome Test HKG 8!', 'Test', '', 'HKG 8', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (979, 1, 2, 'Test HKG 8', sysdate, sysdate, 7, 0, 'Test', '', 'HKG 8', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (980, 1, 978, 13, 978, 0, 0, '980', 0, '/hkg8', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (981, 1, 980, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (982, 1, 980, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (978, 19);

insert into Users_Orgs (userId, organizationId) values (978, 22);
insert into Users_Orgs (userId, organizationId) values (978, 80);

insert into Users_Roles values (978, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (983, 1, sysdate, sysdate, 0, 984, 'test', 0, 0, 'hkg9', 'test.hkg.9@liferay.com', 'Welcome Test HKG 9!', 'Test', '', 'HKG 9', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (984, 1, 2, 'Test HKG 9', sysdate, sysdate, 7, 0, 'Test', '', 'HKG 9', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (985, 1, 983, 13, 983, 0, 0, '985', 0, '/hkg9', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (986, 1, 985, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (987, 1, 985, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (983, 19);

insert into Users_Orgs (userId, organizationId) values (983, 22);
insert into Users_Orgs (userId, organizationId) values (983, 80);

insert into Users_Roles values (983, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (988, 1, sysdate, sysdate, 0, 989, 'test', 0, 0, 'hkg10', 'test.hkg.10@liferay.com', 'Welcome Test HKG 10!', 'Test', '', 'HKG 10', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (989, 1, 2, 'Test HKG 10', sysdate, sysdate, 7, 0, 'Test', '', 'HKG 10', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (990, 1, 988, 13, 988, 0, 0, '990', 0, '/hkg10', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (991, 1, 990, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (992, 1, 990, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (988, 19);

insert into Users_Orgs (userId, organizationId) values (988, 22);
insert into Users_Orgs (userId, organizationId) values (988, 80);

insert into Users_Roles values (988, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (993, 1, sysdate, sysdate, 0, 994, 'test', 0, 0, 'kul1', 'test.kul.1@liferay.com', 'Welcome Test KUL 1!', 'Test', '', 'KUL 1', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (994, 1, 2, 'Test KUL 1', sysdate, sysdate, 7, 0, 'Test', '', 'KUL 1', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (995, 1, 993, 13, 993, 0, 0, '995', 0, '/kul1', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (996, 1, 995, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (997, 1, 995, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (993, 19);

insert into Users_Orgs (userId, organizationId) values (993, 22);
insert into Users_Orgs (userId, organizationId) values (993, 84);

insert into Users_Roles values (993, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (998, 1, sysdate, sysdate, 0, 999, 'test', 0, 0, 'kul2', 'test.kul.2@liferay.com', 'Welcome Test KUL 2!', 'Test', '', 'KUL 2', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (999, 1, 2, 'Test KUL 2', sysdate, sysdate, 7, 0, 'Test', '', 'KUL 2', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1000, 1, 998, 13, 998, 0, 0, '1000', 0, '/kul2', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1001, 1, 1000, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1002, 1, 1000, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (998, 19);

insert into Users_Orgs (userId, organizationId) values (998, 22);
insert into Users_Orgs (userId, organizationId) values (998, 84);

insert into Users_Roles values (998, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (1003, 1, sysdate, sysdate, 0, 1004, 'test', 0, 0, 'kul3', 'test.kul.3@liferay.com', 'Welcome Test KUL 3!', 'Test', '', 'KUL 3', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1004, 1, 2, 'Test KUL 3', sysdate, sysdate, 7, 0, 'Test', '', 'KUL 3', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1005, 1, 1003, 13, 1003, 0, 0, '1005', 0, '/kul3', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1006, 1, 1005, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1007, 1, 1005, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1003, 19);

insert into Users_Orgs (userId, organizationId) values (1003, 22);
insert into Users_Orgs (userId, organizationId) values (1003, 84);

insert into Users_Roles values (1003, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (1008, 1, sysdate, sysdate, 0, 1009, 'test', 0, 0, 'kul4', 'test.kul.4@liferay.com', 'Welcome Test KUL 4!', 'Test', '', 'KUL 4', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1009, 1, 2, 'Test KUL 4', sysdate, sysdate, 7, 0, 'Test', '', 'KUL 4', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1010, 1, 1008, 13, 1008, 0, 0, '1010', 0, '/kul4', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1011, 1, 1010, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1012, 1, 1010, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1008, 19);

insert into Users_Orgs (userId, organizationId) values (1008, 22);
insert into Users_Orgs (userId, organizationId) values (1008, 84);

insert into Users_Roles values (1008, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (1013, 1, sysdate, sysdate, 0, 1014, 'test', 0, 0, 'kul5', 'test.kul.5@liferay.com', 'Welcome Test KUL 5!', 'Test', '', 'KUL 5', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1014, 1, 2, 'Test KUL 5', sysdate, sysdate, 7, 0, 'Test', '', 'KUL 5', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1015, 1, 1013, 13, 1013, 0, 0, '1015', 0, '/kul5', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1016, 1, 1015, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1017, 1, 1015, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1013, 19);

insert into Users_Orgs (userId, organizationId) values (1013, 22);
insert into Users_Orgs (userId, organizationId) values (1013, 84);

insert into Users_Roles values (1013, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (1018, 1, sysdate, sysdate, 0, 1019, 'test', 0, 0, 'kul6', 'test.kul.6@liferay.com', 'Welcome Test KUL 6!', 'Test', '', 'KUL 6', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1019, 1, 2, 'Test KUL 6', sysdate, sysdate, 7, 0, 'Test', '', 'KUL 6', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1020, 1, 1018, 13, 1018, 0, 0, '1020', 0, '/kul6', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1021, 1, 1020, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1022, 1, 1020, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1018, 19);

insert into Users_Orgs (userId, organizationId) values (1018, 22);
insert into Users_Orgs (userId, organizationId) values (1018, 84);

insert into Users_Roles values (1018, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (1023, 1, sysdate, sysdate, 0, 1024, 'test', 0, 0, 'kul7', 'test.kul.7@liferay.com', 'Welcome Test KUL 7!', 'Test', '', 'KUL 7', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1024, 1, 2, 'Test KUL 7', sysdate, sysdate, 7, 0, 'Test', '', 'KUL 7', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1025, 1, 1023, 13, 1023, 0, 0, '1025', 0, '/kul7', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1026, 1, 1025, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1027, 1, 1025, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1023, 19);

insert into Users_Orgs (userId, organizationId) values (1023, 22);
insert into Users_Orgs (userId, organizationId) values (1023, 84);

insert into Users_Roles values (1023, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (1028, 1, sysdate, sysdate, 0, 1029, 'test', 0, 0, 'kul8', 'test.kul.8@liferay.com', 'Welcome Test KUL 8!', 'Test', '', 'KUL 8', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1029, 1, 2, 'Test KUL 8', sysdate, sysdate, 7, 0, 'Test', '', 'KUL 8', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1030, 1, 1028, 13, 1028, 0, 0, '1030', 0, '/kul8', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1031, 1, 1030, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1032, 1, 1030, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1028, 19);

insert into Users_Orgs (userId, organizationId) values (1028, 22);
insert into Users_Orgs (userId, organizationId) values (1028, 84);

insert into Users_Roles values (1028, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (1033, 1, sysdate, sysdate, 0, 1034, 'test', 0, 0, 'kul9', 'test.kul.9@liferay.com', 'Welcome Test KUL 9!', 'Test', '', 'KUL 9', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1034, 1, 2, 'Test KUL 9', sysdate, sysdate, 7, 0, 'Test', '', 'KUL 9', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1035, 1, 1033, 13, 1033, 0, 0, '1035', 0, '/kul9', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1036, 1, 1035, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1037, 1, 1035, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1033, 19);

insert into Users_Orgs (userId, organizationId) values (1033, 22);
insert into Users_Orgs (userId, organizationId) values (1033, 84);

insert into Users_Roles values (1033, 18);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, active_) values (1038, 1, sysdate, sysdate, 0, 1039, 'test', 0, 0, 'kul10', 'test.kul.10@liferay.com', 'Welcome Test KUL 10!', 'Test', '', 'KUL 10', sysdate, 0, 1, 1);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1039, 1, 2, 'Test KUL 10', sysdate, sysdate, 7, 0, 'Test', '', 'KUL 10', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1040, 1, 1038, 13, 1038, 0, 0, '1040', 0, '/kul10', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1041, 1, 1040, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1042, 1, 1040, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1038, 19);

insert into Users_Orgs (userId, organizationId) values (1038, 22);
insert into Users_Orgs (userId, organizationId) values (1038, 84);

insert into Users_Roles values (1038, 18);












insert into Release_ (releaseId, createDate, modifiedDate, servletContextName, buildNumber, verified) values (1, sysdate, sysdate, 'portal', 6012, 0);


create table QUARTZ_JOB_DETAILS (
	JOB_NAME varchar2(320) not null,
	JOB_GROUP varchar2(320) not null,
	DESCRIPTION varchar2(480) null,
	JOB_CLASS_NAME varchar2(512) not null,
	IS_DURABLE number(1, 0) not null,
	IS_VOLATILE number(1, 0) not null,
	IS_STATEFUL number(1, 0) not null,
	REQUESTS_RECOVERY number(1, 0) not null,
	JOB_DATA blob null,
	primary key (JOB_NAME, JOB_GROUP)
);

create table QUARTZ_JOB_LISTENERS (
	JOB_NAME varchar2(320) not null,
	JOB_GROUP varchar2(320) not null,
	JOB_LISTENER varchar2(320) not null,
	primary key (JOB_NAME, JOB_GROUP, JOB_LISTENER)
);

create table QUARTZ_TRIGGERS (
	TRIGGER_NAME varchar2(320) not null,
	TRIGGER_GROUP varchar2(320) not null,
	JOB_NAME varchar2(320) not null,
	JOB_GROUP varchar2(320) not null,
	IS_VOLATILE number(1, 0) not null,
	DESCRIPTION varchar2(480) null,
	NEXT_FIRE_TIME number(30,0) null,
	PREV_FIRE_TIME number(30,0) null,
	PRIORITY number(30,0) null,
	TRIGGER_STATE varchar2(64) not null,
	TRIGGER_TYPE varchar2(32) not null,
	START_TIME number(30,0) not null,
	END_TIME number(30,0) null,
	CALENDAR_NAME varchar2(320) null,
	MISFIRE_INSTR number(30,0) null,
	JOB_DATA blob null,
	primary key (TRIGGER_NAME, TRIGGER_GROUP)
);

create table QUARTZ_SIMPLE_TRIGGERS (
	TRIGGER_NAME varchar2(320) not null,
	TRIGGER_GROUP varchar2(320) not null,
	REPEAT_COUNT number(30,0) not null,
	REPEAT_INTERVAL number(30,0) not null,
	TIMES_TRIGGERED number(30,0) not null,
	primary key (TRIGGER_NAME, TRIGGER_GROUP)
);

create table QUARTZ_CRON_TRIGGERS (
	TRIGGER_NAME varchar2(320) not null,
	TRIGGER_GROUP varchar2(320) not null,
	CRON_EXPRESSION varchar2(320) not null,
	TIME_ZONE_ID varchar2(320),
	primary key (TRIGGER_NAME, TRIGGER_GROUP)
);

create table QUARTZ_BLOB_TRIGGERS (
	TRIGGER_NAME varchar2(320) not null,
	TRIGGER_GROUP varchar2(320) not null,
	BLOB_DATA blob null,
	primary key (TRIGGER_NAME, TRIGGER_GROUP)
);

create table QUARTZ_TRIGGER_LISTENERS (
	TRIGGER_NAME varchar2(320) not null,
	TRIGGER_GROUP varchar2(320) not null,
	TRIGGER_LISTENER varchar2(320) not null,
	primary key (TRIGGER_NAME, TRIGGER_GROUP, TRIGGER_LISTENER)
);

create table QUARTZ_CALENDARS (
	CALENDAR_NAME varchar2(320) not null primary key,
	CALENDAR blob not null
);

create table QUARTZ_PAUSED_TRIGGER_GRPS (
	TRIGGER_GROUP varchar2(320) not null primary key
);

create table QUARTZ_FIRED_TRIGGERS (
	ENTRY_ID varchar2(380) not null primary key,
	TRIGGER_NAME varchar2(320) not null,
	TRIGGER_GROUP varchar2(320) not null,
	IS_VOLATILE number(1, 0) not null,
	INSTANCE_NAME varchar2(320) not null,
	FIRED_TIME number(30,0) not null,
	PRIORITY number(30,0) not null,
	STATE varchar2(64) not null,
	JOB_NAME varchar2(320) null,
	JOB_GROUP varchar2(320) null,
	IS_STATEFUL number(1, 0) null,
	REQUESTS_RECOVERY number(1, 0) null
);

create table QUARTZ_SCHEDULER_STATE (
	INSTANCE_NAME varchar2(320) not null primary key,
	LAST_CHECKIN_TIME number(30,0) not null,
	CHECKIN_INTERVAL number(30,0) not null
);

create table QUARTZ_LOCKS (
	LOCK_NAME varchar2(160) not null primary key
);

commit;

insert into QUARTZ_LOCKS values('TRIGGER_ACCESS');
insert into QUARTZ_LOCKS values('JOB_ACCESS');
insert into QUARTZ_LOCKS values('CALENDAR_ACCESS');
insert into QUARTZ_LOCKS values('STATE_ACCESS');
insert into QUARTZ_LOCKS values('MISFIRE_ACCESS');

create index IX_F7655CC3 on QUARTZ_TRIGGERS (NEXT_FIRE_TIME);
create index IX_9955EFB5 on QUARTZ_TRIGGERS (TRIGGER_STATE);
create index IX_8040C593 on QUARTZ_TRIGGERS (TRIGGER_STATE, NEXT_FIRE_TIME);
create index IX_804154AF on QUARTZ_FIRED_TRIGGERS (INSTANCE_NAME);
create index IX_BAB9A1F7 on QUARTZ_FIRED_TRIGGERS (JOB_GROUP);
create index IX_ADEE6A17 on QUARTZ_FIRED_TRIGGERS (JOB_NAME);
create index IX_64B194F2 on QUARTZ_FIRED_TRIGGERS (TRIGGER_GROUP);
create index IX_5FEABBC on QUARTZ_FIRED_TRIGGERS (TRIGGER_NAME);
create index IX_20D8706C on QUARTZ_FIRED_TRIGGERS (TRIGGER_NAME, TRIGGER_GROUP);



commit;


create index IX_93D5AD4E on Address (companyId);
create index IX_ABD7DAC0 on Address (companyId, classNameId);
create index IX_71CB1123 on Address (companyId, classNameId, classPK);
create index IX_923BD178 on Address (companyId, classNameId, classPK, mailing);
create index IX_9226DBB4 on Address (companyId, classNameId, classPK, primary_);
create index IX_5BC8B0D4 on Address (userId);

create index IX_6EDB9600 on AnnouncementsDelivery (userId);
create unique index IX_BA4413D5 on AnnouncementsDelivery (userId, type_);

create index IX_A6EF0B81 on AnnouncementsEntry (classNameId, classPK);
create index IX_14F06A6B on AnnouncementsEntry (classNameId, classPK, alert);
create index IX_D49C2E66 on AnnouncementsEntry (userId);
create index IX_1AFBDE08 on AnnouncementsEntry (uuid_);

create index IX_9C7EB9F on AnnouncementsFlag (entryId);
create unique index IX_4539A99C on AnnouncementsFlag (userId, entryId, value);

create index IX_E639E2F6 on AssetCategory (groupId);
create index IX_D61ABE08 on AssetCategory (name, vocabularyId);
create index IX_7BB1826B on AssetCategory (parentCategoryId);
create index IX_9DDD15EA on AssetCategory (parentCategoryId, name);
create unique index IX_BE4DF2BF on AssetCategory (parentCategoryId, name, vocabularyId);
create index IX_B185E980 on AssetCategory (parentCategoryId, vocabularyId);
create index IX_4D37BB00 on AssetCategory (uuid_);
create unique index IX_E8D019AA on AssetCategory (uuid_, groupId);
create index IX_287B1F89 on AssetCategory (vocabularyId);

create index IX_99DA856 on AssetCategoryProperty (categoryId);
create unique index IX_DBD111AA on AssetCategoryProperty (categoryId, key_);
create index IX_8654719F on AssetCategoryProperty (companyId);
create index IX_52340033 on AssetCategoryProperty (companyId, key_);

create index IX_A188F560 on AssetEntries_AssetCategories (categoryId);
create index IX_E119938A on AssetEntries_AssetCategories (entryId);

create index IX_2ED82CAD on AssetEntries_AssetTags (entryId);
create index IX_B2A61B55 on AssetEntries_AssetTags (tagId);

create unique index IX_1E9D371D on AssetEntry (classNameId, classPK);
create index IX_FC1F9C7B on AssetEntry (classUuid);
create index IX_7306C60 on AssetEntry (companyId);
create index IX_1EBA6821 on AssetEntry (groupId, classUuid);

create index IX_128516C8 on AssetLink (entryId1);
create index IX_56E0AB21 on AssetLink (entryId1, entryId2);
create index IX_8F542794 on AssetLink (entryId1, entryId2, type_);
create index IX_14D5A20D on AssetLink (entryId1, type_);
create index IX_12851A89 on AssetLink (entryId2);
create index IX_91F132C on AssetLink (entryId2, type_);

create index IX_7C9E46BA on AssetTag (groupId);

create index IX_DFF1F063 on AssetTagProperty (companyId);
create index IX_13805BF7 on AssetTagProperty (companyId, key_);
create index IX_3269E180 on AssetTagProperty (tagId);
create unique index IX_2C944354 on AssetTagProperty (tagId, key_);

create index IX_50702693 on AssetTagStats (classNameId);
create index IX_9464CA on AssetTagStats (tagId);
create unique index IX_56682CC4 on AssetTagStats (tagId, classNameId);

create index IX_B22D908C on AssetVocabulary (companyId);
create index IX_B6B8CA0E on AssetVocabulary (groupId);
create unique index IX_C0AAD74D on AssetVocabulary (groupId, name);
create index IX_55F58818 on AssetVocabulary (uuid_);
create unique index IX_1B2B8792 on AssetVocabulary (uuid_, groupId);

create index IX_72EF6041 on BlogsEntry (companyId);
create index IX_430D791F on BlogsEntry (companyId, displayDate);
create index IX_BB0C2905 on BlogsEntry (companyId, displayDate, status);
create index IX_EB2DCE27 on BlogsEntry (companyId, status);
create index IX_8CACE77B on BlogsEntry (companyId, userId);
create index IX_A5F57B61 on BlogsEntry (companyId, userId, status);
create index IX_81A50303 on BlogsEntry (groupId);
create index IX_621E19D on BlogsEntry (groupId, displayDate);
create index IX_F0E73383 on BlogsEntry (groupId, displayDate, status);
create index IX_1EFD8EE9 on BlogsEntry (groupId, status);
create unique index IX_DB780A20 on BlogsEntry (groupId, urlTitle);
create index IX_FBDE0AA3 on BlogsEntry (groupId, userId, displayDate);
create index IX_DA04F689 on BlogsEntry (groupId, userId, displayDate, status);
create index IX_49E15A23 on BlogsEntry (groupId, userId, status);
create index IX_69157A4D on BlogsEntry (uuid_);
create unique index IX_1B1040FD on BlogsEntry (uuid_, groupId);

create index IX_90CDA39A on BlogsStatsUser (companyId, entryCount);
create index IX_43840EEB on BlogsStatsUser (groupId);
create index IX_28C78D5C on BlogsStatsUser (groupId, entryCount);
create unique index IX_82254C25 on BlogsStatsUser (groupId, userId);
create index IX_BB51F1D9 on BlogsStatsUser (userId);
create index IX_507BA031 on BlogsStatsUser (userId, lastPostDate);

create index IX_E52FF7EF on BookmarksEntry (groupId);
create index IX_5200100C on BookmarksEntry (groupId, folderId);
create index IX_E2E9F129 on BookmarksEntry (groupId, userId);
create index IX_B670BA39 on BookmarksEntry (uuid_);
create unique index IX_EAA02A91 on BookmarksEntry (uuid_, groupId);

create index IX_2ABA25D7 on BookmarksFolder (companyId);
create index IX_7F703619 on BookmarksFolder (groupId);
create index IX_967799C0 on BookmarksFolder (groupId, parentFolderId);
create index IX_451E7AE3 on BookmarksFolder (uuid_);
create unique index IX_DC2F8927 on BookmarksFolder (uuid_, groupId);

create unique index IX_E7B95510 on BrowserTracker (userId);

create index IX_D6FD9496 on CalEvent (companyId);
create index IX_12EE4898 on CalEvent (groupId);
create index IX_4FDDD2BF on CalEvent (groupId, repeating);
create index IX_FCD7C63D on CalEvent (groupId, type_);
create index IX_F6006202 on CalEvent (remindBy);
create index IX_C1AD2122 on CalEvent (uuid_);
create unique index IX_5CCE79C8 on CalEvent (uuid_, groupId);

create unique index IX_B27A301F on ClassName_ (value);

create index IX_38EFE3FD on Company (logoId);
create index IX_12566EC2 on Company (mx);
create index IX_35E3E7C6 on Company (system);
create unique index IX_EC00543C on Company (webId);

create index IX_66D496A3 on Contact_ (companyId);

create unique index IX_717B97E1 on Country (a2);
create unique index IX_717B9BA2 on Country (a3);
create index IX_25D734CD on Country (active_);
create unique index IX_19DA007B on Country (name);

create index IX_4CB1B2B4 on DLFileEntry (companyId);
create index IX_F4AF5636 on DLFileEntry (groupId);
create index IX_93CF8193 on DLFileEntry (groupId, folderId);
create unique index IX_5391712 on DLFileEntry (groupId, folderId, name);
create unique index IX_ED5CA615 on DLFileEntry (groupId, folderId, title);
create index IX_43261870 on DLFileEntry (groupId, userId);
create index IX_D20C434D on DLFileEntry (groupId, userId, folderId);
create index IX_64F0FE40 on DLFileEntry (uuid_);
create unique index IX_BC2E7E6A on DLFileEntry (uuid_, groupId);

create unique index IX_38F0315 on DLFileRank (companyId, userId, fileEntryId);
create index IX_A65A1F8B on DLFileRank (fileEntryId);
create index IX_BAFB116E on DLFileRank (groupId, userId);
create index IX_EED06670 on DLFileRank (userId);

create index IX_B0051937 on DLFileShortcut (groupId, folderId);
create index IX_ECCE311D on DLFileShortcut (groupId, folderId, status);
create index IX_4B7247F6 on DLFileShortcut (toFileEntryId);
create index IX_4831EBE4 on DLFileShortcut (uuid_);
create unique index IX_FDB4A946 on DLFileShortcut (uuid_, groupId);

create index IX_C68DC967 on DLFileVersion (fileEntryId);
create index IX_D47BB14D on DLFileVersion (fileEntryId, status);
create unique index IX_E2815081 on DLFileVersion (fileEntryId, version);

create index IX_A74DB14C on DLFolder (companyId);
create index IX_F2EA1ACE on DLFolder (groupId);
create index IX_49C37475 on DLFolder (groupId, parentFolderId);
create unique index IX_902FD874 on DLFolder (groupId, parentFolderId, name);
create index IX_51556082 on DLFolder (parentFolderId, name);
create index IX_CBC408D8 on DLFolder (uuid_);
create unique index IX_3CC1DED2 on DLFolder (uuid_, groupId);

create index IX_1BB072CA on EmailAddress (companyId);
create index IX_49D2DEC4 on EmailAddress (companyId, classNameId);
create index IX_551A519F on EmailAddress (companyId, classNameId, classPK);
create index IX_2A2CB130 on EmailAddress (companyId, classNameId, classPK, primary_);
create index IX_7B43CD8 on EmailAddress (userId);

create index IX_A8C0CBE8 on ExpandoColumn (tableId);
create unique index IX_FEFC8DA7 on ExpandoColumn (tableId, name);

create index IX_D3F5D7AE on ExpandoRow (tableId);
create unique index IX_81EFBFF5 on ExpandoRow (tableId, classPK);

create index IX_B5AE8A85 on ExpandoTable (companyId, classNameId);
create unique index IX_37562284 on ExpandoTable (companyId, classNameId, name);

create index IX_B29FEF17 on ExpandoValue (classNameId, classPK);
create index IX_F7DD0987 on ExpandoValue (columnId);
create unique index IX_9DDD21E5 on ExpandoValue (columnId, rowId_);
create index IX_9112A7A0 on ExpandoValue (rowId_);
create index IX_F0566A77 on ExpandoValue (tableId);
create index IX_1BD3F4C on ExpandoValue (tableId, classPK);
create index IX_CA9AFB7C on ExpandoValue (tableId, columnId);
create unique index IX_D27B03E7 on ExpandoValue (tableId, columnId, classPK);
create index IX_B71E92D5 on ExpandoValue (tableId, rowId_);

create index IX_ABA5CEC2 on Group_ (companyId);
create unique index IX_D0D5E397 on Group_ (companyId, classNameId, classPK);
create unique index IX_5DE0BE11 on Group_ (companyId, classNameId, liveGroupId, name);
create unique index IX_5BDDB872 on Group_ (companyId, friendlyURL);
create unique index IX_BBCA55B on Group_ (companyId, liveGroupId, name);
create unique index IX_5AA68501 on Group_ (companyId, name);
create index IX_16218A38 on Group_ (liveGroupId);
create index IX_7B590A7A on Group_ (type_, active_);

create index IX_75267DCA on Groups_Orgs (groupId);
create index IX_6BBB7682 on Groups_Orgs (organizationId);

create index IX_C48736B on Groups_Permissions (groupId);
create index IX_EC97689D on Groups_Permissions (permissionId);

create index IX_84471FD2 on Groups_Roles (groupId);
create index IX_3103EF3D on Groups_Roles (roleId);

create index IX_31FB749A on Groups_UserGroups (groupId);
create index IX_3B69160F on Groups_UserGroups (userGroupId);

create index IX_60214CF6 on IGFolder (companyId);
create index IX_206498F8 on IGFolder (groupId);
create index IX_1A605E9F on IGFolder (groupId, parentFolderId);
create unique index IX_9BBAFB1E on IGFolder (groupId, parentFolderId, name);
create index IX_F73C0982 on IGFolder (uuid_);
create unique index IX_B10EFD68 on IGFolder (uuid_, groupId);

create index IX_E597322D on IGImage (custom1ImageId);
create index IX_D9E0A34C on IGImage (custom2ImageId);
create index IX_63820A7 on IGImage (groupId);
create index IX_8956B2C4 on IGImage (groupId, folderId);
create index IX_AAE8DF83 on IGImage (groupId, folderId, name);
create index IX_BE79E1E1 on IGImage (groupId, userId);
create index IX_64F0B572 on IGImage (largeImageId);
create index IX_D3D32126 on IGImage (smallImageId);
create index IX_265BB0F1 on IGImage (uuid_);
create unique index IX_E97342D9 on IGImage (uuid_, groupId);

create index IX_6A925A4D on Image (size_);

create index IX_DFF98523 on JournalArticle (companyId);
create index IX_323DF109 on JournalArticle (companyId, status);
create index IX_3D070845 on JournalArticle (companyId, version);
create index IX_E82F322B on JournalArticle (companyId, version, status);
create index IX_9356F865 on JournalArticle (groupId);
create index IX_68C0F69C on JournalArticle (groupId, articleId);
create index IX_4D5CD982 on JournalArticle (groupId, articleId, status);
create unique index IX_85C52EEC on JournalArticle (groupId, articleId, version);
create index IX_301D024B on JournalArticle (groupId, status);
create index IX_2E207659 on JournalArticle (groupId, structureId);
create index IX_8DEAE14E on JournalArticle (groupId, templateId);
create index IX_22882D02 on JournalArticle (groupId, urlTitle);
create index IX_D2D249E8 on JournalArticle (groupId, urlTitle, status);
create index IX_33F49D16 on JournalArticle (resourcePrimKey);
create index IX_3E2765FC on JournalArticle (resourcePrimKey, status);
create index IX_EF9B7028 on JournalArticle (smallImageId);
create index IX_F029602F on JournalArticle (uuid_);
create unique index IX_3463D95B on JournalArticle (uuid_, groupId);

create index IX_3B51BB68 on JournalArticleImage (groupId);
create index IX_158B526F on JournalArticleImage (groupId, articleId, version);
create unique index IX_103D6207 on JournalArticleImage (groupId, articleId, version, elInstanceId, elName, languageId);
create index IX_D4121315 on JournalArticleImage (tempImage);

create index IX_F8433677 on JournalArticleResource (groupId);
create unique index IX_88DF994A on JournalArticleResource (groupId, articleId);
create index IX_DCD1FAC1 on JournalArticleResource (uuid_);
create unique index IX_84AB0309 on JournalArticleResource (uuid_, groupId);

create index IX_9207CB31 on JournalContentSearch (articleId);
create index IX_6838E427 on JournalContentSearch (groupId, articleId);
create index IX_20962903 on JournalContentSearch (groupId, privateLayout);
create index IX_7CC7D73E on JournalContentSearch (groupId, privateLayout, articleId);
create index IX_B3B318DC on JournalContentSearch (groupId, privateLayout, layoutId);
create index IX_7ACC74C9 on JournalContentSearch (groupId, privateLayout, layoutId, portletId);
create unique index IX_C3AA93B8 on JournalContentSearch (groupId, privateLayout, layoutId, portletId, articleId);

create index IX_35A2DB2F on JournalFeed (groupId);
create unique index IX_65576CBC on JournalFeed (groupId, feedId);
create index IX_50C36D79 on JournalFeed (uuid_);
create unique index IX_39031F51 on JournalFeed (uuid_, groupId);

create index IX_B97F5608 on JournalStructure (groupId);
create index IX_CA0BD48C on JournalStructure (groupId, parentStructureId);
create unique index IX_AB6E9996 on JournalStructure (groupId, structureId);
create index IX_8831E4FC on JournalStructure (structureId);
create index IX_6702CA92 on JournalStructure (uuid_);
create unique index IX_42E86E58 on JournalStructure (uuid_, groupId);

create index IX_77923653 on JournalTemplate (groupId);
create index IX_1701CB2B on JournalTemplate (groupId, structureId);
create unique index IX_E802AA3C on JournalTemplate (groupId, templateId);
create index IX_25FFB6FA on JournalTemplate (smallImageId);
create index IX_1B12CA20 on JournalTemplate (templateId);
create index IX_2857419D on JournalTemplate (uuid_);
create unique index IX_62D1B3AD on JournalTemplate (uuid_, groupId);

create index IX_C7FBC998 on Layout (companyId);
create index IX_FAD05595 on Layout (dlFolderId);
create index IX_C099D61A on Layout (groupId);
create index IX_705F5AA3 on Layout (groupId, privateLayout);
create unique index IX_BC2C4231 on Layout (groupId, privateLayout, friendlyURL);
create unique index IX_7162C27C on Layout (groupId, privateLayout, layoutId);
create index IX_6DE88B06 on Layout (groupId, privateLayout, parentLayoutId);
create index IX_1A1B61D2 on Layout (groupId, privateLayout, type_);
create index IX_23922F7D on Layout (iconImageId);
create index IX_D0822724 on Layout (uuid_);
create unique index IX_CED31606 on Layout (uuid_, groupId);

create index IX_30616AAA on LayoutPrototype (companyId);
create index IX_557A639F on LayoutPrototype (companyId, active_);

create index IX_A40B8BEC on LayoutSet (groupId);
create unique index IX_48550691 on LayoutSet (groupId, privateLayout);

create index IX_55F63D98 on LayoutSetPrototype (companyId);
create index IX_9178FC71 on LayoutSetPrototype (companyId, active_);

create index IX_2932DD37 on ListType (type_);

create index IX_228562AD on Lock_ (className, key_);
create index IX_E3F1286B on Lock_ (expirationDate);
create index IX_13C5CD3A on Lock_ (uuid_);

create index IX_69951A25 on MBBan (banUserId);
create index IX_5C3FF12A on MBBan (groupId);
create unique index IX_8ABC4E3B on MBBan (groupId, banUserId);
create index IX_48814BBA on MBBan (userId);

create index IX_BC735DCF on MBCategory (companyId);
create index IX_BB870C11 on MBCategory (groupId);
create index IX_ED292508 on MBCategory (groupId, parentCategoryId);
create index IX_C2626EDB on MBCategory (uuid_);
create unique index IX_F7D28C2F on MBCategory (uuid_, groupId);

create index IX_79D0120B on MBDiscussion (classNameId);
create unique index IX_33A4DE38 on MBDiscussion (classNameId, classPK);
create unique index IX_B5CA2DC on MBDiscussion (threadId);

create index IX_BFEB984F on MBMailingList (active_);
create unique index IX_76CE9CDD on MBMailingList (groupId, categoryId);
create index IX_4115EC7A on MBMailingList (uuid_);
create unique index IX_E858F170 on MBMailingList (uuid_, groupId);

create index IX_51A8D44D on MBMessage (classNameId, classPK);
create index IX_F6687633 on MBMessage (classNameId, classPK, status);
create index IX_B1432D30 on MBMessage (companyId);
create index IX_1AD93C16 on MBMessage (companyId, status);
create index IX_5B153FB2 on MBMessage (groupId);
create index IX_1073AB9F on MBMessage (groupId, categoryId);
create index IX_4257DB85 on MBMessage (groupId, categoryId, status);
create index IX_B674AB58 on MBMessage (groupId, categoryId, threadId);
create index IX_385E123E on MBMessage (groupId, categoryId, threadId, status);
create index IX_ED39AC98 on MBMessage (groupId, status);
create index IX_8EB8C5EC on MBMessage (groupId, userId);
create index IX_377858D2 on MBMessage (groupId, userId, status);
create index IX_75B95071 on MBMessage (threadId);
create index IX_A7038CD7 on MBMessage (threadId, parentMessageId);
create index IX_9DC8E57 on MBMessage (threadId, status);
create index IX_7A040C32 on MBMessage (userId);
create index IX_C57B16BC on MBMessage (uuid_);
create unique index IX_8D12316E on MBMessage (uuid_, groupId);

create index IX_D180D4AE on MBMessageFlag (messageId);
create index IX_A6973A8E on MBMessageFlag (messageId, flag);
create index IX_C1C9A8FD on MBMessageFlag (threadId);
create index IX_3CFD579D on MBMessageFlag (threadId, flag);
create index IX_7B2917BE on MBMessageFlag (userId);
create unique index IX_E9EB6194 on MBMessageFlag (userId, messageId, flag);
create index IX_2EA537D7 on MBMessageFlag (userId, threadId, flag);

create index IX_A00A898F on MBStatsUser (groupId);
create index IX_FAB5A88B on MBStatsUser (groupId, messageCount);
create unique index IX_9168E2C9 on MBStatsUser (groupId, userId);
create index IX_847F92B5 on MBStatsUser (userId);

create index IX_41F6DC8A on MBThread (categoryId, priority);
create index IX_95C0EA45 on MBThread (groupId);
create index IX_9A2D11B2 on MBThread (groupId, categoryId);
create index IX_50F1904A on MBThread (groupId, categoryId, lastPostDate);
create index IX_485F7E98 on MBThread (groupId, categoryId, status);
create index IX_E1E7142B on MBThread (groupId, status);
create index IX_AEDD9CB5 on MBThread (lastPostDate, priority);
create index IX_CC993ECB on MBThread (rootMessageId);

create index IX_8A1CC4B on MembershipRequest (groupId);
create index IX_C28C72EC on MembershipRequest (groupId, statusId);
create index IX_35AA8FA6 on MembershipRequest (groupId, userId, statusId);
create index IX_66D70879 on MembershipRequest (userId);

create index IX_A425F71A on OrgGroupPermission (groupId);
create index IX_6C53DA4E on OrgGroupPermission (permissionId);

create index IX_4A527DD3 on OrgGroupRole (groupId);
create index IX_AB044D1C on OrgGroupRole (roleId);

create index IX_6AF0D434 on OrgLabor (organizationId);

create index IX_834BCEB6 on Organization_ (companyId);
create unique index IX_E301BDF5 on Organization_ (companyId, name);
create index IX_418E4522 on Organization_ (companyId, parentOrganizationId);

create index IX_2C1142E on PasswordPolicy (companyId, defaultPolicy);
create unique index IX_3FBFA9F4 on PasswordPolicy (companyId, name);

create index IX_C3A17327 on PasswordPolicyRel (classNameId, classPK);
create index IX_CD25266E on PasswordPolicyRel (passwordPolicyId);
create index IX_ED7CF243 on PasswordPolicyRel (passwordPolicyId, classNameId, classPK);

create index IX_326F75BD on PasswordTracker (userId);

create unique index IX_4D19C2B8 on Permission_ (actionId, resourceId);
create index IX_F090C113 on Permission_ (resourceId);

create index IX_9F704A14 on Phone (companyId);
create index IX_A2E4AFBA on Phone (companyId, classNameId);
create index IX_9A53569 on Phone (companyId, classNameId, classPK);
create index IX_812CE07A on Phone (companyId, classNameId, classPK, primary_);
create index IX_F202B9CE on Phone (userId);

create index IX_B9746445 on PluginSetting (companyId);
create unique index IX_7171B2E8 on PluginSetting (companyId, pluginId, pluginType);

create index IX_EC370F10 on PollsChoice (questionId);
create unique index IX_D76DD2CF on PollsChoice (questionId, name);
create index IX_6660B399 on PollsChoice (uuid_);

create index IX_9FF342EA on PollsQuestion (groupId);
create index IX_51F087F4 on PollsQuestion (uuid_);
create unique index IX_F3C9F36 on PollsQuestion (uuid_, groupId);

create index IX_D5DF7B54 on PollsVote (choiceId);
create index IX_12112599 on PollsVote (questionId);
create unique index IX_1BBFD4D3 on PollsVote (questionId, userId);

create index IX_D1F795F1 on PortalPreferences (ownerId, ownerType);

create index IX_80CC9508 on Portlet (companyId);
create unique index IX_12B5E51D on Portlet (companyId, portletId);

create index IX_96BDD537 on PortletItem (groupId, classNameId);
create index IX_D699243F on PortletItem (groupId, name, portletId, classNameId);
create index IX_2C61314E on PortletItem (groupId, portletId);
create index IX_E922D6C0 on PortletItem (groupId, portletId, classNameId);
create index IX_8E71167F on PortletItem (groupId, portletId, classNameId, name);
create index IX_33B8CE8D on PortletItem (groupId, portletId, name);

create index IX_E4F13E6E on PortletPreferences (ownerId, ownerType, plid);
create unique index IX_C7057FF7 on PortletPreferences (ownerId, ownerType, plid, portletId);
create index IX_F15C1C4F on PortletPreferences (plid);
create index IX_D340DB76 on PortletPreferences (plid, portletId);

create index IX_16184D57 on RatingsEntry (classNameId, classPK);
create index IX_A1A8CB8B on RatingsEntry (classNameId, classPK, score);
create unique index IX_B47E3C11 on RatingsEntry (userId, classNameId, classPK);

create unique index IX_A6E99284 on RatingsStats (classNameId, classPK);

create index IX_2D9A426F on Region (active_);
create index IX_16D87CA7 on Region (countryId);
create index IX_11FB3E42 on Region (countryId, active_);

create index IX_8BD6BCA7 on Release_ (servletContextName);

create index IX_81F2DB09 on ResourceAction (name);
create unique index IX_EDB9986E on ResourceAction (name, actionId);

create index IX_717FDD47 on ResourceCode (companyId);
create unique index IX_A32C097E on ResourceCode (companyId, name, scope);
create index IX_AACAFF40 on ResourceCode (name);
create index IX_FCADE8C4 on ResourceCode (name, scope);

create index IX_88705859 on ResourcePermission (companyId, name, primKey, ownerId);
create index IX_C94C7708 on ResourcePermission (companyId, name, primKey, roleId, actionIds);
create index IX_60B99860 on ResourcePermission (companyId, name, scope);
create index IX_2200AA69 on ResourcePermission (companyId, name, scope, primKey);
create unique index IX_8D83D0CE on ResourcePermission (companyId, name, scope, primKey, roleId);
create unique index IX_4A1F4402 on ResourcePermission (companyId, name, scope, primKey, roleId, ownerId, actionIds);
create index IX_A37A0588 on ResourcePermission (roleId);

create index IX_2578FBD3 on Resource_ (codeId);
create unique index IX_67DE7856 on Resource_ (codeId, primKey);

create index IX_449A10B9 on Role_ (companyId);
create unique index IX_A88E424E on Role_ (companyId, classNameId, classPK);
create unique index IX_EBC931B8 on Role_ (companyId, name);
create index IX_F436EC8E on Role_ (name);
create index IX_5EB4E2FB on Role_ (subtype);
create index IX_CBE204 on Role_ (type_, subtype);

create index IX_7A3619C6 on Roles_Permissions (permissionId);
create index IX_E04E486D on Roles_Permissions (roleId);

create index IX_3BB93ECA on SCFrameworkVersi_SCProductVers (frameworkVersionId);
create index IX_E8D33FF9 on SCFrameworkVersi_SCProductVers (productVersionId);

create index IX_C98C0D78 on SCFrameworkVersion (companyId);
create index IX_272991FA on SCFrameworkVersion (groupId);
create index IX_6E1764F on SCFrameworkVersion (groupId, active_);

create index IX_1C841592 on SCLicense (active_);
create index IX_5327BB79 on SCLicense (active_, recommended);

create index IX_27006638 on SCLicenses_SCProductEntries (licenseId);
create index IX_D7710A66 on SCLicenses_SCProductEntries (productEntryId);

create index IX_5D25244F on SCProductEntry (companyId);
create index IX_72F87291 on SCProductEntry (groupId);
create index IX_98E6A9CB on SCProductEntry (groupId, userId);
create index IX_7311E812 on SCProductEntry (repoGroupId, repoArtifactId);

create index IX_AE8224CC on SCProductScreenshot (fullImageId);
create index IX_467956FD on SCProductScreenshot (productEntryId);
create index IX_DA913A55 on SCProductScreenshot (productEntryId, priority);
create index IX_6C572DAC on SCProductScreenshot (thumbnailId);

create index IX_7020130F on SCProductVersion (directDownloadURL);
create index IX_8377A211 on SCProductVersion (productEntryId);

create index IX_7338606F on ServiceComponent (buildNamespace);
create unique index IX_4F0315B8 on ServiceComponent (buildNamespace, buildNumber);

create index IX_DA5F4359 on Shard (classNameId, classPK);
create index IX_941BA8C3 on Shard (name);

create index IX_C28B41DC on ShoppingCart (groupId);
create unique index IX_FC46FE16 on ShoppingCart (groupId, userId);
create index IX_54101CC8 on ShoppingCart (userId);

create index IX_5F615D3E on ShoppingCategory (groupId);
create index IX_1E6464F5 on ShoppingCategory (groupId, parentCategoryId);

create unique index IX_DC60CFAE on ShoppingCoupon (code_);
create index IX_3251AF16 on ShoppingCoupon (groupId);

create unique index IX_1C717CA6 on ShoppingItem (companyId, sku);
create index IX_FEFE7D76 on ShoppingItem (groupId, categoryId);
create index IX_903DC750 on ShoppingItem (largeImageId);
create index IX_D217AB30 on ShoppingItem (mediumImageId);
create index IX_FF203304 on ShoppingItem (smallImageId);

create index IX_6D5F9B87 on ShoppingItemField (itemId);

create index IX_EA6FD516 on ShoppingItemPrice (itemId);

create index IX_1D15553E on ShoppingOrder (groupId);
create index IX_119B5630 on ShoppingOrder (groupId, userId, ppPaymentStatus);
create unique index IX_D7D6E87A on ShoppingOrder (number_);
create index IX_F474FD89 on ShoppingOrder (ppTxnId);

create index IX_B5F82C7A on ShoppingOrderItem (orderId);

create index IX_82E39A0C on SocialActivity (classNameId);
create index IX_A853C757 on SocialActivity (classNameId, classPK);
create index IX_64B1BC66 on SocialActivity (companyId);
create index IX_2A2468 on SocialActivity (groupId);
create unique index IX_8F32DEC9 on SocialActivity (groupId, userId, createDate, classNameId, classPK, type_, receiverUserId);
create index IX_1271F25F on SocialActivity (mirrorActivityId);
create index IX_1F00C374 on SocialActivity (mirrorActivityId, classNameId, classPK);
create index IX_121CA3CB on SocialActivity (receiverUserId);
create index IX_3504B8BC on SocialActivity (userId);

create unique index IX_22F6B5CB on SocialEquityAssetEntry (assetEntryId);

create unique index IX_E4F84168 on SocialEquityGroupSetting (groupId, classNameId, type_);

create index IX_AC18D8F8 on SocialEquityLog (assetEntryId, actionId, actionDate, active_, type_, extraData);
create index IX_541BDA0F on SocialEquityLog (assetEntryId, actionId, active_, extraData);
create index IX_E8DA181D on SocialEquityLog (assetEntryId, type_, active_);
create index IX_3C8A04B2 on SocialEquityLog (userId);
create index IX_18F55CAF on SocialEquityLog (userId, actionId, actionDate, active_, type_, extraData);
create unique index IX_A0FA597E on SocialEquityLog (userId, assetEntryId, actionId, actionDate, active_, type_, extraData);
create index IX_DAE54B49 on SocialEquityLog (userId, assetEntryId, actionId, active_, extraData);

create index IX_F3AAD60D on SocialEquitySetting (groupId, classNameId, actionId);
create unique index IX_903C1B28 on SocialEquitySetting (groupId, classNameId, actionId, type_);

create index IX_6B42B3E7 on SocialEquityUser (groupId);
create index IX_945E27C7 on SocialEquityUser (groupId, rank);
create unique index IX_D65D3521 on SocialEquityUser (groupId, userId);
create index IX_166A8F03 on SocialEquityUser (rank);
create index IX_6ECBD5D on SocialEquityUser (userId);

create index IX_61171E99 on SocialRelation (companyId);
create index IX_95135D1C on SocialRelation (companyId, type_);
create index IX_C31A64C6 on SocialRelation (type_);
create index IX_5A40CDCC on SocialRelation (userId1);
create index IX_4B52BE89 on SocialRelation (userId1, type_);
create index IX_B5C9C690 on SocialRelation (userId1, userId2);
create unique index IX_12A92145 on SocialRelation (userId1, userId2, type_);
create index IX_5A40D18D on SocialRelation (userId2);
create index IX_3F9C2FA8 on SocialRelation (userId2, type_);
create index IX_F0CA24A5 on SocialRelation (uuid_);

create index IX_D3425487 on SocialRequest (classNameId, classPK, type_, receiverUserId, status);
create index IX_A90FE5A0 on SocialRequest (companyId);
create index IX_32292ED1 on SocialRequest (receiverUserId);
create index IX_D9380CB7 on SocialRequest (receiverUserId, status);
create index IX_80F7A9C2 on SocialRequest (userId);
create unique index IX_36A90CA7 on SocialRequest (userId, classNameId, classPK, type_, receiverUserId);
create index IX_CC86A444 on SocialRequest (userId, classNameId, classPK, type_, status);
create index IX_AB5906A8 on SocialRequest (userId, status);
create index IX_49D5872C on SocialRequest (uuid_);
create unique index IX_4F973EFE on SocialRequest (uuid_, groupId);

create index IX_786D171A on Subscription (companyId, classNameId, classPK);
create unique index IX_2E1A92D4 on Subscription (companyId, userId, classNameId, classPK);
create index IX_54243AFD on Subscription (userId);
create index IX_E8F34171 on Subscription (userId, classNameId);

create unique index IX_181A4A1B on TasksProposal (classNameId, classPK);
create index IX_7FB27324 on TasksProposal (groupId);
create index IX_6EEC675E on TasksProposal (groupId, userId);

create index IX_4D0C7F8D on TasksReview (proposalId);
create index IX_70AFEA01 on TasksReview (proposalId, stage);
create index IX_1894B29A on TasksReview (proposalId, stage, completed);
create index IX_41AFC20C on TasksReview (proposalId, stage, completed, rejected);
create index IX_36F512E6 on TasksReview (userId);
create unique index IX_5C6BE4C7 on TasksReview (userId, proposalId);

create index IX_AE6E9907 on Team (groupId);
create unique index IX_143DC786 on Team (groupId, name);

create index IX_B2468446 on Ticket (key_);

create index IX_524FEFCE on UserGroup (companyId);
create unique index IX_23EAD0D on UserGroup (companyId, name);
create index IX_69771487 on UserGroup (companyId, parentUserGroupId);

create index IX_CCBE4063 on UserGroupGroupRole (groupId);
create index IX_CAB0CCC8 on UserGroupGroupRole (groupId, roleId);
create index IX_1CDF88C on UserGroupGroupRole (roleId);
create index IX_DCDED558 on UserGroupGroupRole (userGroupId);
create index IX_73C52252 on UserGroupGroupRole (userGroupId, groupId);

create index IX_1B988D7A on UserGroupRole (groupId);
create index IX_871412DF on UserGroupRole (groupId, roleId);
create index IX_887A2C95 on UserGroupRole (roleId);
create index IX_887BE56A on UserGroupRole (userId);
create index IX_4D040680 on UserGroupRole (userId, groupId);

create index IX_31FB0B08 on UserGroups_Teams (teamId);
create index IX_7F187E63 on UserGroups_Teams (userGroupId);

create unique index IX_41A32E0D on UserIdMapper (type_, externalUserId);
create index IX_E60EA987 on UserIdMapper (userId);
create unique index IX_D1C44A6E on UserIdMapper (userId, type_);

create index IX_3E5D78C4 on UserNotificationEvent (userId);
create index IX_ECD8CFEA on UserNotificationEvent (uuid_);

create index IX_29BA1CF5 on UserTracker (companyId);
create index IX_46B0AE8E on UserTracker (sessionId);
create index IX_E4EFBA8D on UserTracker (userId);

create index IX_14D8BCC0 on UserTrackerPath (userTrackerId);

create index IX_3A1E834E on User_ (companyId);
create index IX_5204C37B on User_ (companyId, active_);
create index IX_6EF03E4E on User_ (companyId, defaultUser);
create unique index IX_615E9F7A on User_ (companyId, emailAddress);
create index IX_1D731F03 on User_ (companyId, facebookId);
create index IX_89509087 on User_ (companyId, openId);
create unique index IX_C5806019 on User_ (companyId, screenName);
create unique index IX_9782AD88 on User_ (companyId, userId);
create unique index IX_5ADBE171 on User_ (contactId);
create index IX_762F63C6 on User_ (emailAddress);
create index IX_A18034A4 on User_ (portraitId);
create index IX_E0422BDA on User_ (uuid_);

create index IX_C4F9E699 on Users_Groups (groupId);
create index IX_F10B6C6B on Users_Groups (userId);

create index IX_7EF4EC0E on Users_Orgs (organizationId);
create index IX_FB646CA6 on Users_Orgs (userId);

create index IX_8AE58A91 on Users_Permissions (permissionId);
create index IX_C26AA64D on Users_Permissions (userId);

create index IX_C19E5F31 on Users_Roles (roleId);
create index IX_C1A01806 on Users_Roles (userId);

create index IX_4D06AD51 on Users_Teams (teamId);
create index IX_A098EFBF on Users_Teams (userId);

create index IX_66FF2503 on Users_UserGroups (userGroupId);
create index IX_BE8102D6 on Users_UserGroups (userId);

create unique index IX_A083D394 on VirtualHost (companyId, layoutSetId);
create unique index IX_431A3960 on VirtualHost (hostname);

create unique index IX_97DFA146 on WebDAVProps (classNameId, classPK);

create index IX_96F07007 on Website (companyId);
create index IX_4F0F0CA7 on Website (companyId, classNameId);
create index IX_F960131C on Website (companyId, classNameId, classPK);
create index IX_1AA07A6D on Website (companyId, classNameId, classPK, primary_);
create index IX_F75690BB on Website (userId);

create index IX_5D6FE3F0 on WikiNode (companyId);
create index IX_B480A672 on WikiNode (groupId);
create unique index IX_920CD8B1 on WikiNode (groupId, name);
create index IX_6C112D7C on WikiNode (uuid_);
create unique index IX_7609B2AE on WikiNode (uuid_, groupId);

create index IX_A2001730 on WikiPage (format);
create index IX_C8A9C476 on WikiPage (nodeId);
create index IX_E7F635CA on WikiPage (nodeId, head);
create index IX_65E84AF4 on WikiPage (nodeId, head, parentTitle);
create index IX_9F7655DA on WikiPage (nodeId, head, parentTitle, status);
create index IX_432F0AB0 on WikiPage (nodeId, head, status);
create index IX_46EEF3C8 on WikiPage (nodeId, parentTitle);
create index IX_1ECC7656 on WikiPage (nodeId, redirectTitle);
create index IX_546F2D5C on WikiPage (nodeId, status);
create index IX_997EEDD2 on WikiPage (nodeId, title);
create index IX_E745EA26 on WikiPage (nodeId, title, head);
create index IX_BEA33AB8 on WikiPage (nodeId, title, status);
create unique index IX_3D4AF476 on WikiPage (nodeId, title, version);
create index IX_B771D67 on WikiPage (resourcePrimKey, nodeId);
create index IX_94D1054D on WikiPage (resourcePrimKey, nodeId, status);
create unique index IX_2CD67C81 on WikiPage (resourcePrimKey, nodeId, version);
create index IX_FBBE7C96 on WikiPage (userId, nodeId, status);
create index IX_9C0E478F on WikiPage (uuid_);
create unique index IX_899D3DFB on WikiPage (uuid_, groupId);

create unique index IX_21277664 on WikiPageResource (nodeId, title);
create index IX_BE898221 on WikiPageResource (uuid_);

create index IX_A8B0D276 on WorkflowDefinitionLink (companyId);
create index IX_A4DB1F0F on WorkflowDefinitionLink (companyId, workflowDefinitionName, workflowDefinitionVersion);
create index IX_B6EE8C9E on WorkflowDefinitionLink (groupId, companyId, classNameId);

create index IX_415A7007 on WorkflowInstanceLink (groupId, companyId, classNameId, classPK);



