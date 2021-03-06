

ALTER TABLE [dbo].mp_Sites ADD CreatedUtc datetime NOT NULL default getutcdate()
GO


ALTER TABLE [dbo].mp_Sites ADD IsDataProtected bit NOT NULL default 0
GO


ALTER PROCEDURE [dbo].[mp_Sites_Insert]

/*
Author:   			Joe Audette
Created: 			2005-03-07
Last Modified: 		2016-01-17

*/


@SiteName 				nvarchar(255),
@Skin 					nvarchar(100),
@AllowNewRegistration 			bit,
@UseSecureRegistration 		bit,
@UseSSLOnAllPages 			bit,
@IsServerAdminSite 			bit,
@UseLdapAuth				bit,
@AutoCreateLdapUserOnFirstLogin	bit,
@LdapServer				nvarchar(255),
@LdapPort				int,
@LdapDomain				nvarchar(255),
@LdapRootDN				nvarchar(255),
@LdapUserDNKey			nvarchar(10),
@AllowUserFullNameChange		bit,
@UseEmailForLogin			bit,
@ReallyDeleteUsers			bit,
@SiteGuid					uniqueidentifier,
@RecaptchaPrivateKey				nvarchar(255),
@RecaptchaPublicKey				nvarchar(255),
@ApiKeyExtra1 				nvarchar(255),
@ApiKeyExtra2 				nvarchar(255),
@ApiKeyExtra3 				nvarchar(255),
@ApiKeyExtra4 				nvarchar(255),
@ApiKeyExtra5 				nvarchar(255),
@DisableDbAuth bit,
@RequiresQuestionAndAnswer bit,
@MaxInvalidPasswordAttempts int,
@PasswordAttemptWindowMinutes int,
@MinRequiredPasswordLength int,
@MinReqNonAlphaChars int,
@DefaultEmailFromAddress nvarchar(100),
@AllowDbFallbackWithLdap bit,
@EmailLdapDbFallback bit,
@AllowPersistentLogin bit,
@CaptchaOnLogin bit,
@CaptchaOnRegistration bit,
@SiteIsClosed bit,
@SiteIsClosedMessage nvarchar(max),
@PrivacyPolicy nvarchar(max),
@TimeZoneId nvarchar(50),
@GoogleAnalyticsProfileId nvarchar(25),
@CompanyName nvarchar(255),
@CompanyStreetAddress nvarchar(250),
@CompanyStreetAddress2 nvarchar(250),
@CompanyRegion nvarchar(200),
@CompanyLocality nvarchar(200),
@CompanyCountry nvarchar(10),
@CompanyPostalCode nvarchar(20),
@CompanyPublicEmail nvarchar(100),
@CompanyPhone nvarchar(20),
@CompanyFax nvarchar(20),
@FacebookAppId nvarchar(100),
@FacebookAppSecret nvarchar(max),
@GoogleClientId nvarchar(100),
@GoogleClientSecret nvarchar(max),
@TwitterConsumerKey nvarchar(100),
@TwitterConsumerSecret nvarchar(max),
@MicrosoftClientId nvarchar(100),
@MicrosoftClientSecret nvarchar(max),
@PreferredHostName nvarchar(250),
@SiteFolderName nvarchar(50),
@AddThisDotComUsername nvarchar(50),
@LoginInfoTop nvarchar(max),
@LoginInfoBottom nvarchar(max),
@RegistrationAgreement nvarchar(max),
@RegistrationPreamble nvarchar(max),
@SmtpServer nvarchar(200),
@SmtpPort int,
@SmtpUser nvarchar(500),
@SmtpPassword nvarchar(max),
@SmtpPreferredEncoding nvarchar(20),
@SmtpRequiresAuth bit,
@SmtpUseSsl bit,
@RequireApprovalBeforeLogin bit,
@IsDataProtected bit,
@CreatedUtc datetime

AS
INSERT INTO 	[dbo].[mp_Sites] 
(
				
				[SiteName],
				[Skin],
				[AllowNewRegistration],
				[UseSecureRegistration],
				[UseSSLOnAllPages],
				[IsServerAdminSite],
				UseLdapAuth,
				AutoCreateLdapUserOnFirstLogin,
				LdapServer,
				LdapPort,
				LdapDomain,
				LdapRootDN,
				LdapUserDNKey,
				ReallyDeleteUsers,
				UseEmailForLogin,
				AllowUserFullNameChange,
				SiteGuid,
				RecaptchaPrivateKey,
				RecaptchaPublicKey,
				ApiKeyExtra1,
				ApiKeyExtra2,
				ApiKeyExtra3,
				ApiKeyExtra4,
				ApiKeyExtra5,
				DisableDbAuth,
				RequiresQuestionAndAnswer,
				MaxInvalidPasswordAttempts,
				PasswordAttemptWindowMinutes,
				MinRequiredPasswordLength,
				MinReqNonAlphaChars,
				DefaultEmailFromAddress,
				AllowDbFallbackWithLdap,
				EmailLdapDbFallback,
				AllowPersistentLogin,
				CaptchaOnLogin,
				CaptchaOnRegistration,
				SiteIsClosed,
				SiteIsClosedMessage,
				PrivacyPolicy,
				TimeZoneId,
				GoogleAnalyticsProfileId,
				CompanyName,
				CompanyStreetAddress,
				CompanyStreetAddress2,
				CompanyRegion,
				CompanyLocality,
				CompanyCountry,
				CompanyPostalCode,
				CompanyPublicEmail,
				CompanyPhone,
				CompanyFax,
				FacebookAppId,
				FacebookAppSecret,
				GoogleClientId,
				GoogleClientSecret,
				TwitterConsumerKey,
				TwitterConsumerSecret,
				MicrosoftClientId,
				MicrosoftClientSecret,
				PreferredHostName,
				SiteFolderName,
				AddThisDotComUsername,
				LoginInfoTop,
				LoginInfoBottom,
				RegistrationAgreement,
				RegistrationPreamble,
				SmtpServer,
				SmtpPort,
				SmtpUser,
				SmtpPassword,
				SmtpPreferredEncoding,
				SmtpRequiresAuth,
				SmtpUseSsl,
				RequireApprovalBeforeLogin,
				CreatedUtc,
				IsDataProtected
) 

VALUES 
(
				
				@SiteName,
				@Skin,
				@AllowNewRegistration,
				@UseSecureRegistration,
				@UseSSLOnAllPages,
				@IsServerAdminSite,
				@UseLdapAuth,
				@AutoCreateLdapUserOnFirstLogin,
				@LdapServer,
				@LdapPort,
				@LdapDomain,
				@LdapRootDN,
				@LdapUserDNKey,
				@ReallyDeleteUsers,
				@UseEmailForLogin,
				@AllowUserFullNameChange,
				@SiteGuid,
				@RecaptchaPrivateKey,
				@RecaptchaPublicKey,
				@ApiKeyExtra1,
				@ApiKeyExtra2,
				@ApiKeyExtra3,
				@ApiKeyExtra4,
				@ApiKeyExtra5,
				@DisableDbAuth,
				@RequiresQuestionAndAnswer,
				@MaxInvalidPasswordAttempts,
				@PasswordAttemptWindowMinutes,
				@MinRequiredPasswordLength,
				@MinReqNonAlphaChars,
				@DefaultEmailFromAddress,
				@AllowDbFallbackWithLdap,
				@EmailLdapDbFallback,
				@AllowPersistentLogin,
				@CaptchaOnLogin,
				@CaptchaOnRegistration,
				@SiteIsClosed,
				@SiteIsClosedMessage,
				@PrivacyPolicy,
				@TimeZoneId,
				@GoogleAnalyticsProfileId,
				@CompanyName,
				@CompanyStreetAddress,
				@CompanyStreetAddress2,
				@CompanyRegion,
				@CompanyLocality,
				@CompanyCountry,
				@CompanyPostalCode,
				@CompanyPublicEmail,
				@CompanyPhone,
				@CompanyFax,
				@FacebookAppId,
				@FacebookAppSecret,
				@GoogleClientId,
				@GoogleClientSecret,
				@TwitterConsumerKey,
				@TwitterConsumerSecret,
				@MicrosoftClientId,
				@MicrosoftClientSecret,
				@PreferredHostName,
				@SiteFolderName,
				@AddThisDotComUsername,
				@LoginInfoTop,
				@LoginInfoBottom,
				@RegistrationAgreement,
				@RegistrationPreamble,
				@SmtpServer,
				@SmtpPort,
				@SmtpUser,
				@SmtpPassword,
				@SmtpPreferredEncoding,
				@SmtpRequiresAuth,
				@SmtpUseSsl,
				@RequireApprovalBeforeLogin,
				@CreatedUtc,
				@IsDataProtected
				
)
SELECT @@IDENTITY

GO


ALTER PROCEDURE [dbo].[mp_Sites_Update]

/*
Author:		Joe Audette
Last Modified:	2016-01-17

*/

@SiteID           			int,
@SiteName         		nvarchar(128),
@Skin				nvarchar(100),
@AllowNewRegistration		bit,
@UseSecureRegistration	bit,
@UseSSLOnAllPages		bit,
@IsServerAdminSite		bit,
@UseLdapAuth				bit,
@AutoCreateLdapUserOnFirstLogin	bit,
@LdapServer				nvarchar(255),
@LdapPort				int,
@LdapDomain				nvarchar(255),
@LdapRootDN				nvarchar(255),
@LdapUserDNKey			nvarchar(10),
@AllowUserFullNameChange		bit,
@UseEmailForLogin			bit,
@ReallyDeleteUsers			bit,
@RecaptchaPrivateKey				nvarchar(255),
@RecaptchaPublicKey				nvarchar(255),
@ApiKeyExtra1 				nvarchar(255),
@ApiKeyExtra2 				nvarchar(255),
@ApiKeyExtra3 				nvarchar(255),
@ApiKeyExtra4 				nvarchar(255),
@ApiKeyExtra5 				nvarchar(255),
@DisableDbAuth bit,
@RequiresQuestionAndAnswer bit,
@MaxInvalidPasswordAttempts int,
@PasswordAttemptWindowMinutes int,
@MinRequiredPasswordLength int,
@MinReqNonAlphaChars int,
@DefaultEmailFromAddress nvarchar(100),
@AllowDbFallbackWithLdap bit,
@EmailLdapDbFallback bit,
@AllowPersistentLogin bit,
@CaptchaOnLogin bit,
@CaptchaOnRegistration bit,
@SiteIsClosed bit,
@SiteIsClosedMessage nvarchar(max),
@PrivacyPolicy nvarchar(max),
@TimeZoneId nvarchar(50),
@GoogleAnalyticsProfileId nvarchar(25),
@CompanyName nvarchar(255),
@CompanyStreetAddress nvarchar(250),
@CompanyStreetAddress2 nvarchar(250),
@CompanyRegion nvarchar(200),
@CompanyLocality nvarchar(200),
@CompanyCountry nvarchar(10),
@CompanyPostalCode nvarchar(20),
@CompanyPublicEmail nvarchar(100),
@CompanyPhone nvarchar(20),
@CompanyFax nvarchar(20),
@FacebookAppId nvarchar(100),
@FacebookAppSecret nvarchar(max),
@GoogleClientId nvarchar(100),
@GoogleClientSecret nvarchar(max),
@TwitterConsumerKey nvarchar(100),
@TwitterConsumerSecret nvarchar(max),
@MicrosoftClientId nvarchar(100),
@MicrosoftClientSecret nvarchar(max),
@PreferredHostName nvarchar(250),
@SiteFolderName nvarchar(50),
@AddThisDotComUsername nvarchar(50),
@LoginInfoTop nvarchar(max),
@LoginInfoBottom nvarchar(max),
@RegistrationAgreement nvarchar(max),
@RegistrationPreamble nvarchar(max),
@SmtpServer nvarchar(200),
@SmtpPort int,
@SmtpUser nvarchar(500),
@SmtpPassword nvarchar(max),
@SmtpPreferredEncoding nvarchar(20),
@SmtpRequiresAuth bit,
@SmtpUseSsl bit,
@RequireApprovalBeforeLogin bit,
@IsDataProtected bit
	
AS
UPDATE	mp_Sites

SET
    	SiteName = @SiteName,
	Skin = @Skin,
	AllowNewRegistration = @AllowNewRegistration,
	UseSecureRegistration = @UseSecureRegistration,
	UseSSLOnAllPages = @UseSSLOnAllPages,
	IsServerAdminSite = @IsServerAdminSite,
	UseLdapAuth = @UseLdapAuth,
	AutoCreateLdapUserOnFirstLogin = @AutoCreateLdapUserOnFirstLogin,
	LdapServer = @LdapServer,
	LdapPort = @LdapPort,
    LdapDomain = @LdapDomain,
	LdapRootDN = @LdapRootDN,
	LdapUserDNKey = @LdapUserDNKey,
	AllowUserFullNameChange = @AllowUserFullNameChange,
	UseEmailForLogin = @UseEmailForLogin,
	ReallyDeleteUsers = @ReallyDeleteUsers,
	RecaptchaPrivateKey = @RecaptchaPrivateKey,
	RecaptchaPublicKey = @RecaptchaPublicKey,
	ApiKeyExtra1 = @ApiKeyExtra1,
	ApiKeyExtra2 = @ApiKeyExtra2,
	ApiKeyExtra3 = @ApiKeyExtra3,
	ApiKeyExtra4 = @ApiKeyExtra4,
	ApiKeyExtra5 = @ApiKeyExtra5,
	DisableDbAuth = @DisableDbAuth,
	RequiresQuestionAndAnswer = @RequiresQuestionAndAnswer,
	MaxInvalidPasswordAttempts = @MaxInvalidPasswordAttempts,
	PasswordAttemptWindowMinutes = @PasswordAttemptWindowMinutes,
	MinRequiredPasswordLength = @MinRequiredPasswordLength,
	MinReqNonAlphaChars = @MinReqNonAlphaChars,
	DefaultEmailFromAddress = @DefaultEmailFromAddress,
	AllowDbFallbackWithLdap = @AllowDbFallbackWithLdap,
	EmailLdapDbFallback = @EmailLdapDbFallback,
	AllowPersistentLogin = @AllowPersistentLogin,
	CaptchaOnLogin = @CaptchaOnLogin,
	CaptchaOnRegistration = @CaptchaOnRegistration,
	SiteIsClosed = @SiteIsClosed,
	SiteIsClosedMessage = @SiteIsClosedMessage,
	PrivacyPolicy = @PrivacyPolicy,
	TimeZoneId = @TimeZoneId,
	GoogleAnalyticsProfileId = @GoogleAnalyticsProfileId,
	CompanyName = @CompanyName,
	CompanyStreetAddress = @CompanyStreetAddress,
	CompanyStreetAddress2 = @CompanyStreetAddress2,
	CompanyRegion = @CompanyRegion,
	CompanyLocality = @CompanyLocality,
	CompanyCountry = @CompanyCountry,
	CompanyPostalCode = @CompanyPostalCode,
	CompanyPublicEmail = @CompanyPublicEmail,
	CompanyPhone = @CompanyPhone,
	CompanyFax = @CompanyFax,
	FacebookAppId = @FacebookAppId,
	FacebookAppSecret = @FacebookAppSecret,
	GoogleClientId = @GoogleClientId,
	GoogleClientSecret = @GoogleClientSecret,
	TwitterConsumerKey = @TwitterConsumerKey,
	TwitterConsumerSecret = @TwitterConsumerSecret,
	MicrosoftClientId = @MicrosoftClientId,
	MicrosoftClientSecret = @MicrosoftClientSecret,
	PreferredHostName = @PreferredHostName,
	SiteFolderName = @SiteFolderName,
	AddThisDotComUsername = @AddThisDotComUsername,
	LoginInfoTop = @LoginInfoTop,
	LoginInfoBottom = @LoginInfoBottom,
	RegistrationAgreement = @RegistrationAgreement,
	RegistrationPreamble = @RegistrationPreamble,
	SmtpServer = @SmtpServer,
	SmtpPort = @SmtpPort,
	SmtpUser = @SmtpUser,
	SmtpPassword = @SmtpPassword,
	SmtpPreferredEncoding = @SmtpPreferredEncoding,
	SmtpRequiresAuth = @SmtpRequiresAuth,
	SmtpUseSsl = @SmtpUseSsl,
	RequireApprovalBeforeLogin = @RequireApprovalBeforeLogin,
	IsDataProtected = @IsDataProtected

WHERE
    	SiteID = @SiteID

GO
