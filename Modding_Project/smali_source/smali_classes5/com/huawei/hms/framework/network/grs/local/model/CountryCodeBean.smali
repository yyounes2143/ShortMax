.class public Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ANDRIOD_SYSTEMPROP:Ljava/lang/String; = "android.os.SystemProperties"

.field private static final ANDROID_9_API_LEVEL:I = 0x1c

.field private static final COUNTRYCODE_SIZE:I = 0x2

.field private static final KEY_VERSION_EMUI:Ljava/lang/String; = "ro.build.version.emui"

.field private static final LOCALE_COUNTRYSYSTEMPROP:Ljava/lang/String; = "ro.product.locale"

.field private static final LOCALE_REGION_COUNTRYSYSTEMPROP:Ljava/lang/String; = "ro.product.locale.region"

.field private static final SPECIAL_COUNTRYCODE_CN:Ljava/lang/String; = "cn"

.field private static final SPECIAL_COUNTRYCODE_EU:Ljava/lang/String; = "eu"

.field private static final SPECIAL_COUNTRYCODE_GB:Ljava/lang/String; = "gb"

.field private static final SPECIAL_COUNTRYCODE_LA:Ljava/lang/String; = "la"

.field private static final SPECIAL_COUNTRYCODE_UK:Ljava/lang/String; = "uk"

.field private static final TAG:Ljava/lang/String; = "CountryCodeBean"

.field private static final VENDORCOUNTRY_SYSTEMPROP:Ljava/lang/String; = "ro.hw.country"


# instance fields
.field private countryCode:Ljava/lang/String;

.field private countrySource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "UNKNOWN"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->init(Landroid/content/Context;Z)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 14
    .line 15
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method private checkCodeLenth()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    :cond_0
    const-string v0, "UNKNOWN"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method private getLocaleCountryCode()V
    .locals 4

    .line 1
    const-string v0, "android.os.SystemProperties"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "get"

    .line 6
    .line 7
    const-string v3, "ro.build.version.emui"

    .line 8
    .line 9
    invoke-static {v2, v3, v0, v1}, Lcom/huawei/hms/framework/common/SystemPropUtils;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-static {}, Lcom/huawei/hms/framework/common/EmuiUtil;->isUpPVersion()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getRegionSettingCountryCode()V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "EMUI 9.0 upper System, get countryCode form Locale.getDefault().getCountry()"

    .line 31
    .line 32
    :goto_0
    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getProductCountryCode()V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    const-string v1, "EMUI 9.0 lower System, get countryCode form ro.product.locale.region or locale"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 45
    .line 46
    const/16 v1, 0x1c

    .line 47
    .line 48
    if-ge v0, v1, :cond_3

    .line 49
    .line 50
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/16 v1, 0x39

    .line 58
    .line 59
    if-lt v0, v1, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getProductCountryCode()V

    .line 63
    .line 64
    .line 65
    sget-object v0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    const-string v1, "other Android 9.0 lower, get countryCode form ro.product.locale.region or locale"

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getRegionSettingCountryCode()V

    .line 71
    .line 72
    .line 73
    sget-object v0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    const-string v1, "other Android 9.0 upper\uff0c get countryCode form Locale.getDefault().getCountry()"

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :goto_2
    const-string v0, "LOCALE_INFO"

    .line 79
    .line 80
    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    .line 81
    .line 82
    return-void
.end method

.method private getProductCountryCode()V
    .locals 6

    .line 1
    const-string v0, "get"

    .line 2
    .line 3
    const-string v1, "ro.product.locale.region"

    .line 4
    .line 5
    const-string v2, "android.os.SystemProperties"

    .line 6
    .line 7
    const-string v3, "UNKNOWN"

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hms/framework/common/SystemPropUtils;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 14
    .line 15
    sget-object v1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v5, "countryCode by ro.product.locale.region is: "

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v5, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v1, v4}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v4, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_0

    .line 46
    .line 47
    iget-object v4, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    :cond_0
    const-string v4, "ro.product.locale"

    .line 56
    .line 57
    invoke-static {v0, v4, v2, v3}, Lcom/huawei/hms/framework/common/SystemPropUtils;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    const-string v2, "-"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    const/4 v4, -0x1

    .line 74
    if-eq v2, v4, :cond_1

    .line 75
    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v2, "countryCode by ro.product.locale is: "

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v1, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 107
    .line 108
    const-string v1, "cn"

    .line 109
    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_2

    .line 115
    .line 116
    iput-object v3, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 117
    .line 118
    :cond_2
    return-void
.end method

.method private getRegionSettingCountryCode()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "countryCode by system\'s region setting is: "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    const-string v0, "UNKNOWN"

    .line 44
    .line 45
    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method private getSimCountryCode(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getSimCountryCode(Landroid/content/Context;Z)V

    return-void
.end method

.method private getSimCountryCode(Landroid/content/Context;Z)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string p1, "NETWORK_COUNTRY"

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    sget-object p1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "countryCode by NetworkCountryIso is: "

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string p1, "SIM_COUNTRY"

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    sget-object p1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "countryCode by SimCountryIso is: "

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->checkCodeLenth()V

    return-void
.end method

.method private getVendorCountryCode()V
    .locals 5

    .line 1
    const-string v0, "VENDOR_COUNTRY"

    .line 2
    .line 3
    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "get"

    .line 6
    .line 7
    const-string v2, "ro.hw.country"

    .line 8
    .line 9
    const-string v3, "android.os.SystemProperties"

    .line 10
    .line 11
    const-string v4, "UNKNOWN"

    .line 12
    .line 13
    invoke-static {v1, v2, v3, v4}, Lcom/huawei/hms/framework/common/SystemPropUtils;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 18
    .line 19
    sget-object v1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "countryCode by ro.hw.country is: "

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 44
    .line 45
    const-string v3, "eu"

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 54
    .line 55
    const-string v3, "la"

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 65
    .line 66
    const-string v3, "uk"

    .line 67
    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    const-string v2, "special country of UK to map GB."

    .line 75
    .line 76
    invoke-static {v1, v2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    const-string v1, "gb"

    .line 80
    .line 81
    iput-object v1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->checkCodeLenth()V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    :goto_0
    iput-object v4, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 91
    .line 92
    iput-object v4, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    .line 93
    .line 94
    :goto_1
    return-void
.end method

.method private init(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getVendorCountryCode()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->isCodeValidate()Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    sget-object p1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string p2, "get issue_country code from VENDOR_COUNTRY"

    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getSimCountryCode(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->isCodeValidate()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    sget-object p1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string p2, "get issue_country code from SIM_COUNTRY"

    .line 32
    .line 33
    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getLocaleCountryCode()V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->isCodeValidate()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    sget-object p1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    const-string p2, "get issue_country code from LOCALE_INFO"

    .line 49
    .line 50
    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    sget-object p1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    const-string p2, "get CountryCode error"

    .line 57
    .line 58
    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    return-void

    .line 62
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 63
    .line 64
    const-string p2, "context must be not null.Please provide app\'s Context"

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method private isCodeValidate()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UNKNOWN"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    return v0
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCountrySource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
