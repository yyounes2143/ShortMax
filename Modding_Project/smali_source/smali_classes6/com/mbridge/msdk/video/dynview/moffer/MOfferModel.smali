.class public Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;
.super Ljava/lang/Object;
.source "MOfferModel.java"

# interfaces
.implements Lcom/mbridge/msdk/system/NoProGuard;


# static fields
.field private static final MOF_LOAD_RESULT_CODE_OFFER_LESS_THAN_5:Ljava/lang/String; = "12930014"

.field private static final MOF_LOAD_RESULT_FAILED:Ljava/lang/String; = "2"

.field private static final MOF_LOAD_RESULT_SUCCESS:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "MOfferModel"


# instance fields
.field private final AD_NUM:Ljava/lang/String;

.field private final API_VERSION:Ljava/lang/String;

.field private final APP_ID:Ljava/lang/String;

.field private final CATEGORY:Ljava/lang/String;

.field private final COUNTRY_CODE:Ljava/lang/String;

.field private final CRT_CID:Ljava/lang/String;

.field private final CRT_RID:Ljava/lang/String;

.field private final DEFAULT_PATH_V3:Ljava/lang/String;

.field private final DO_ACTION_IMPRESSION:I

.field private final DO_ACTION_ONLY_IMPRESSION:I

.field private final DY_VIEW:Ljava/lang/String;

.field private final E:Ljava/lang/String;

.field private final EC_ID:Ljava/lang/String;

.field private final H5_T:Ljava/lang/String;

.field private final H5_TYPE:Ljava/lang/String;

.field private final HTTP_REQ:Ljava/lang/String;

.field private final I_FMD5:Ljava/lang/String;

.field private final K:Ljava/lang/String;

.field private final MCC:Ljava/lang/String;

.field private final MNC:Ljava/lang/String;

.field private final MOF:Ljava/lang/String;

.field private final MOF_CALLBACK_DATE:Ljava/lang/String;

.field private final MOF_DATA:Ljava/lang/String;

.field private final MOF_DOMAIN:Ljava/lang/String;

.field private final MOF_PARENT_ID:Ljava/lang/String;

.field private final MOF_T:Ljava/lang/String;

.field private final MOF_TEST_UID:Ljava/lang/String;

.field private final MOF_TYPE:Ljava/lang/String;

.field private final MOF_UID:Ljava/lang/String;

.field private final MOF_VER:Ljava/lang/String;

.field private final MORE_OFFER_CLICK:Ljava/lang/String;

.field private final MORE_OFFER_DEFAULT_APP_ID:Ljava/lang/String;

.field private final MORE_OFFER_DEFAULT_APP_KEY:Ljava/lang/String;

.field private final MORE_OFFER_DEFAULT_UNIT_ID:Ljava/lang/String;

.field private final MORE_OFFER_LOAD_FAILED:Ljava/lang/String;

.field private final MORE_OFFER_LOAD_SUCCESS:Ljava/lang/String;

.field private final MORE_OFFER_SHOW:Ljava/lang/String;

.field private final MORE_OFFER_SHOW_FAILED:Ljava/lang/String;

.field private final OFFER_ID:Ljava/lang/String;

.field private final OFF_SET:Ljava/lang/String;

.field private final ONE_ID:Ljava/lang/String;

.field private final ONLY_IMPRESSION:Ljava/lang/String;

.field private final PARENT_AD_TYPE:Ljava/lang/String;

.field private final PARENT_EXCHANGE:Ljava/lang/String;

.field private final PARENT_ID:Ljava/lang/String;

.field private final PARENT_TEMPLATE_ID:Ljava/lang/String;

.field private final PARENT_UNIT:Ljava/lang/String;

.field private final PING_MODE:Ljava/lang/String;

.field private final RV_TID:Ljava/lang/String;

.field private final R_ID:Ljava/lang/String;

.field private final SIGN:Ljava/lang/String;

.field private final TNUM:Ljava/lang/String;

.field private final TP_LGP:Ljava/lang/String;

.field private final UC_PARENT_UNIT:Ljava/lang/String;

.field private final UNIT_ID:Ljava/lang/String;

.field private final VALUE_AD_NUM:Ljava/lang/String;

.field private final VALUE_API_VERSION:Ljava/lang/String;

.field private final VALUE_CATEGORY:Ljava/lang/String;

.field private final VALUE_COUNTRY_CODE:Ljava/lang/String;

.field private final VALUE_DEFAULT_VIDEO_TEMP_ID:Ljava/lang/String;

.field private final VALUE_H5_TYPE:Ljava/lang/String;

.field private final VALUE_HTTP_REQ:Ljava/lang/String;

.field private final VALUE_MOF:Ljava/lang/String;

.field private final VALUE_MOF_TYPE:Ljava/lang/String;

.field private final VALUE_MOF_VER:Ljava/lang/String;

.field private final VALUE_OFF_SET:Ljava/lang/String;

.field private final VALUE_ONLY_IMPRESSION:Ljava/lang/String;

.field private final VALUE_PING_MODE:Ljava/lang/String;

.field private final VALUE_TNUM:Ljava/lang/String;

.field private final V_FMD5:Ljava/lang/String;

.field private admf:I

.field private admftm:I

.field private bitmapSuccessCount:I

.field private cacheImpressionReportList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cacheOnlyImpressionReportList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile hasReportMoreOfferLoad:Z

.field private volatile hasReportMoreOfferShow:Z

.field private isOnlyImpShow:Z

.field private isShowMoreOffer:Z

.field private mCampaignUnit:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

.field private mContext:Landroid/content/Context;

.field private mControlShowSize:I

.field private mFromType:I

.field private mHasReportMofScenes:Z

.field private mImpressionId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRetry:Z

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mMainOfferCampaignEx:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private mMoreOfferLayoutListener:Lcom/mbridge/msdk/video/dynview/listener/g;

.field private mMoreOfferShowCallBack:Lcom/mbridge/msdk/video/dynview/moffer/c;

.field private mNotifyListener:Lcom/mbridge/msdk/video/module/listener/a;

.field private mObservableScrollView:Lcom/mbridge/msdk/video/dynview/widget/ObservableScrollView;

.field private mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

.field private mRid:Ljava/lang/String;

.field private mUnitId:Ljava/lang/String;

.field private onItemExposeListener:Lcom/mbridge/msdk/video/dynview/endcard/expose/OnItemExposeListener;

.field private viewMofferLayout:Lcom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "1"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->VALUE_MOF_TYPE:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->VALUE_H5_TYPE:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->VALUE_MOF:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "CN"

    .line 13
    .line 14
    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->VALUE_COUNTRY_CODE:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->VALUE_MOF_VER:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "0"

    .line 19
    .line 20
    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->VALUE_OFF_SET:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->VALUE_CATEGORY:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->VALUE_ONLY_IMPRESSION:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->VALUE_PING_MODE:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "2"

    .line 29
    .line 30
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->VALUE_HTTP_REQ:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "20"

    .line 33
    .line 34
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->VALUE_AD_NUM:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->VALUE_TNUM:Ljava/lang/String;

    .line 37
    .line 38
    const-string v0, "2.3"

    .line 39
    .line 40
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->VALUE_API_VERSION:Ljava/lang/String;

    .line 41
    .line 42
    const-string v0, "404"

    .line 43
    .line 44
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->VALUE_DEFAULT_VIDEO_TEMP_ID:Ljava/lang/String;

    .line 45
    .line 46
    const-string v0, "k"

    .line 47
    .line 48
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->K:Ljava/lang/String;

    .line 49
    .line 50
    const-string v0, "mof_testuid"

    .line 51
    .line 52
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->MOF_TEST_UID:Ljava/lang/String;

    .line 53
    .line 54
    const-string v0, "mcc"

    .line 55
    .line 56
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->MCC:Ljava/lang/String;

    .line 57
    .line 58
    const-string v0, "mof_uid"

    .line 59
    .line 60
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->MOF_UID:Ljava/lang/String;

    .line 61
    .line 62
    const-string v0, "mnc"

    .line 63
    .line 64
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->MNC:Ljava/lang/String;

    .line 65
    .line 66
    const-string v0, "rv_tid"

    .line 67
    .line 68
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->RV_TID:Ljava/lang/String;

    .line 69
    .line 70
    const-string v0, "ecid"

    .line 71
    .line 72
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->EC_ID:Ljava/lang/String;

    .line 73
    .line 74
    const-string/jumbo v0, "tplgp"

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->TP_LGP:Ljava/lang/String;

    .line 78
    .line 79
    const-string/jumbo v0, "v_fmd5"

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->V_FMD5:Ljava/lang/String;

    .line 83
    .line 84
    const-string v0, "i_fmd5"

    .line 85
    .line 86
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->I_FMD5:Ljava/lang/String;

    .line 87
    .line 88
    const-string v0, "app_id"

    .line 89
    .line 90
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->APP_ID:Ljava/lang/String;

    .line 91
    .line 92
    const-string/jumbo v0, "sign"

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->SIGN:Ljava/lang/String;

    .line 96
    .line 97
    const-string v0, "parent_unit"

    .line 98
    .line 99
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->PARENT_UNIT:Ljava/lang/String;

    .line 100
    .line 101
    const-string v0, "e"

    .line 102
    .line 103
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->E:Ljava/lang/String;

    .line 104
    .line 105
    const-string v0, "mof_type"

    .line 106
    .line 107
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->MOF_TYPE:Ljava/lang/String;

    .line 108
    .line 109
    const-string v0, "h5_type"

    .line 110
    .line 111
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->H5_TYPE:Ljava/lang/String;

    .line 112
    .line 113
    const-string v0, "mof"

    .line 114
    .line 115
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->MOF:Ljava/lang/String;

    .line 116
    .line 117
    const-string v0, "country_code"

    .line 118
    .line 119
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->COUNTRY_CODE:Ljava/lang/String;

    .line 120
    .line 121
    const-string v0, "mof_ver"

    .line 122
    .line 123
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->MOF_VER:Ljava/lang/String;

    .line 124
    .line 125
    const-string v0, "crt_cid"

    .line 126
    .line 127
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->CRT_CID:Ljava/lang/String;

    .line 128
    .line 129
    const-string v0, "crt_rid"

    .line 130
    .line 131
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->CRT_RID:Ljava/lang/String;

    .line 132
    .line 133
    const-string v0, "h5_t"

    .line 134
    .line 135
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->H5_T:Ljava/lang/String;

    .line 136
    .line 137
    const-string v0, "mof_t"

    .line 138
    .line 139
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->MOF_T:Ljava/lang/String;

    .line 140
    .line 141
    const-string v0, "mof_data"

    .line 142
    .line 143
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->MOF_DATA:Ljava/lang/String;

    .line 144
    .line 145
    const-string v0, "offer_id"

    .line 146
    .line 147
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->OFFER_ID:Ljava/lang/String;

    .line 148
    .line 149
    const-string v0, "offset"

    .line 150
    .line 151
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->OFF_SET:Ljava/lang/String;

    .line 152
    .line 153
    const-string v0, "category"

    .line 154
    .line 155
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->CATEGORY:Ljava/lang/String;

    .line 156
    .line 157
    const-string v0, "only_impression"

    .line 158
    .line 159
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->ONLY_IMPRESSION:Ljava/lang/String;

    .line 160
    .line 161
    const-string v0, "ping_mode"

    .line 162
    .line 163
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->PING_MODE:Ljava/lang/String;

    .line 164
    .line 165
    const-string v0, "http_req"

    .line 166
    .line 167
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->HTTP_REQ:Ljava/lang/String;

    .line 168
    .line 169
    const-string v0, "ad_num"

    .line 170
    .line 171
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->AD_NUM:Ljava/lang/String;

    .line 172
    .line 173
    const-string/jumbo v0, "tnum"

    .line 174
    .line 175
    .line 176
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->TNUM:Ljava/lang/String;

    .line 177
    .line 178
    const-string v0, "api_version"

    .line 179
    .line 180
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->API_VERSION:Ljava/lang/String;

    .line 181
    .line 182
    const-string v0, "mof_domain"

    .line 183
    .line 184
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->MOF_DOMAIN:Ljava/lang/String;

    .line 185
    .line 186
    const-string v0, "parent_id"

    .line 187
    .line 188
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->PARENT_ID:Ljava/lang/String;

    .line 189
    .line 190
    const-string v0, "mof_parent_id"

    .line 191
    .line 192
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->MOF_PARENT_ID:Ljava/lang/String;

    .line 193
    .line 194
    const-string v0, "mcd"

    .line 195
    .line 196
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->MOF_CALLBACK_DATE:Ljava/lang/String;

    .line 197
    .line 198
    const-string/jumbo v0, "uc_parent_unit"

    .line 199
    .line 200
    .line 201
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->UC_PARENT_UNIT:Ljava/lang/String;

    .line 202
    .line 203
    const-string v0, "/openapi/ad/v3"

    .line 204
    .line 205
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->DEFAULT_PATH_V3:Ljava/lang/String;

    .line 206
    .line 207
    const-string v0, "parent_exchange"

    .line 208
    .line 209
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->PARENT_EXCHANGE:Ljava/lang/String;

    .line 210
    .line 211
    const-string v0, "parent_ad_type"

    .line 212
    .line 213
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->PARENT_AD_TYPE:Ljava/lang/String;

    .line 214
    .line 215
    const-string v0, "parent_template_id"

    .line 216
    .line 217
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->PARENT_TEMPLATE_ID:Ljava/lang/String;

    .line 218
    .line 219
    const-string v0, "oneId"

    .line 220
    .line 221
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->ONE_ID:Ljava/lang/String;

    .line 222
    .line 223
    const-string v0, "dy_view"

    .line 224
    .line 225
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->DY_VIEW:Ljava/lang/String;

    .line 226
    .line 227
    const-string v0, "117361"

    .line 228
    .line 229
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->MORE_OFFER_DEFAULT_UNIT_ID:Ljava/lang/String;

    .line 230
    .line 231
    const-string v0, "92762"

    .line 232
    .line 233
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->MORE_OFFER_DEFAULT_APP_ID:Ljava/lang/String;

    .line 234
    .line 235
    const-string v0, "936dcbdd57fe235fd7cf61c2e93da3c4"

    .line 236
    .line 237
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->MORE_OFFER_DEFAULT_APP_KEY:Ljava/lang/String;

    .line 238
    .line 239
    const-string v0, "more offer load success"

    .line 240
    .line 241
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->MORE_OFFER_LOAD_SUCCESS:Ljava/lang/String;

    .line 242
    .line 243
    const-string v0, "more offer load failed"

    .line 244
    .line 245
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->MORE_OFFER_LOAD_FAILED:Ljava/lang/String;

    .line 246
    .line 247
    const-string v0, "more offer show"

    .line 248
    .line 249
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->MORE_OFFER_SHOW:Ljava/lang/String;

    .line 250
    .line 251
    const-string v0, "more offer click"

    .line 252
    .line 253
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->MORE_OFFER_CLICK:Ljava/lang/String;

    .line 254
    .line 255
    const-string v0, "more offer show fail"

    .line 256
    .line 257
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->MORE_OFFER_SHOW_FAILED:Ljava/lang/String;

    .line 258
    .line 259
    const-string/jumbo v0, "unit_id"

    .line 260
    .line 261
    .line 262
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->UNIT_ID:Ljava/lang/String;

    .line 263
    .line 264
    const-string v0, "r_id"

    .line 265
    .line 266
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->R_ID:Ljava/lang/String;

    .line 267
    .line 268
    const/4 v0, 0x0

    .line 269
    iput v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->DO_ACTION_IMPRESSION:I

    .line 270
    .line 271
    const/4 v1, 0x1

    .line 272
    iput v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->DO_ACTION_ONLY_IMPRESSION:I

    .line 273
    .line 274
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->hasReportMoreOfferLoad:Z

    .line 275
    .line 276
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->hasReportMoreOfferShow:Z

    .line 277
    .line 278
    iput v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->bitmapSuccessCount:I

    .line 279
    .line 280
    new-instance v1, Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .line 284
    .line 285
    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mImpressionId:Ljava/util/List;

    .line 286
    .line 287
    iput v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mControlShowSize:I

    .line 288
    .line 289
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->isOnlyImpShow:Z

    .line 290
    .line 291
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mHasReportMofScenes:Z

    .line 292
    .line 293
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mIsRetry:Z

    .line 294
    .line 295
    iput v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mFromType:I

    .line 296
    .line 297
    new-instance v0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$a;

    .line 298
    .line 299
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$a;-><init>(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)V

    .line 300
    .line 301
    .line 302
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->onItemExposeListener:Lcom/mbridge/msdk/video/dynview/endcard/expose/OnItemExposeListener;

    .line 303
    .line 304
    new-instance v0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$b;

    .line 305
    .line 306
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$b;-><init>(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)V

    .line 307
    .line 308
    .line 309
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMoreOfferShowCallBack:Lcom/mbridge/msdk/video/dynview/moffer/c;

    .line 310
    .line 311
    return-void
.end method

.method static synthetic access$000(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Lcom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->viewMofferLayout:Lcom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->hasReportMoreOfferShow:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1000(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Lcom/mbridge/msdk/video/dynview/listener/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMoreOfferLayoutListener:Lcom/mbridge/msdk/video/dynview/listener/g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->hasReportMoreOfferShow:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1100(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Lcom/mbridge/msdk/foundation/same/net/wrapper/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1200(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->admf:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1300(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->admftm:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1400(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->doControllableImpOnRequest()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1500(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->hasReportMoreOfferLoad:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1502(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->hasReportMoreOfferLoad:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1600(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mIsRetry:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1700(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->createMoreOfferView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1800(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1900(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->release()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMainOfferCampaignEx:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2000(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Lcom/mbridge/msdk/video/module/listener/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mNotifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2100(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;Lcom/mbridge/msdk/video/module/listener/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->callBackClick(Lcom/mbridge/msdk/video/module/listener/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2200(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->bitmapSuccessCount:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2208(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->bitmapSuccessCount:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->bitmapSuccessCount:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$2300(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->isShowMoreOffer:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2302(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->isShowMoreOffer:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2400(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Lcom/mbridge/msdk/video/dynview/moffer/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMoreOfferShowCallBack:Lcom/mbridge/msdk/video/dynview/moffer/c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2500(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Lcom/mbridge/msdk/video/dynview/widget/ObservableScrollView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mObservableScrollView:Lcom/mbridge/msdk/video/dynview/widget/ObservableScrollView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2600(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mUnitId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$302(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mUnitId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$400(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mRid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$402(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mRid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$500(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Lcom/mbridge/msdk/foundation/entity/CampaignUnit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mCampaignUnit:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$502(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)Lcom/mbridge/msdk/foundation/entity/CampaignUnit;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mCampaignUnit:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$600(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->cacheImpressionReportList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$602(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->cacheImpressionReportList:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$700(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->isOnlyImpShow:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$800(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->cacheOnlyImpressionReportList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$802(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->cacheOnlyImpressionReportList:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$900(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->findID(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private addLikeTextView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->viewMofferLayout:Lcom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "mbridge_reward_end_card_like_tv"

    .line 7
    .line 8
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->findID(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/widget/TextView;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const-string v1, "#FF000000"

    .line 22
    .line 23
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    const/high16 v1, 0x41200000    # 10.0f

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/l0;->p(Landroid/content/Context;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string/jumbo v2, "zh"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEms(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const/high16 v3, 0x41f00000    # 30.0f

    .line 73
    .line 74
    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/u0;->a(Landroid/content/Context;F)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 79
    .line 80
    const-string/jumbo v1, "\u731c\u4f60\u559c\u6b22"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    const-string v1, "Just\nfor\nYou"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    new-instance v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$i;

    .line 93
    .line 94
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$i;-><init>(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method private buildItemView(I)Landroid/view/View;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    const-string v2, "mbridge_reward_end_card_more_offer_item"

    .line 8
    .line 9
    const-string v3, "layout"

    .line 10
    .line 11
    invoke-static {v0, v2, v3}, Lcom/mbridge/msdk/foundation/tools/h0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v2, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-string v4, "mbridge_reward_end_card_item_iv"

    .line 29
    .line 30
    const-string v5, "id"

    .line 31
    .line 32
    invoke-static {v2, v4, v5}, Lcom/mbridge/msdk/foundation/tools/h0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/mbridge/msdk/videocommon/view/RoundImageView;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    const-string v4, "mbridge_reward_end_card_item_title_tv"

    .line 48
    .line 49
    invoke-static {v2, v4, v5}, Lcom/mbridge/msdk/foundation/tools/h0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/widget/TextView;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mCampaignUnit:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-direct {p0, v4, p1, v1, v2}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->setOfferData(Ljava/util/List;ILcom/mbridge/msdk/videocommon/view/RoundImageView;Landroid/widget/TextView;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mCampaignUnit:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 79
    .line 80
    new-instance v7, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    .line 81
    .line 82
    invoke-direct {v7}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 83
    .line 84
    .line 85
    const/16 v2, 0x127

    .line 86
    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const-string v4, "adtp"

    .line 92
    .line 93
    invoke-virtual {v7, v4, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    const-string v4, "hb"

    .line 105
    .line 106
    if-nez v2, :cond_2

    .line 107
    .line 108
    const/4 v2, 0x1

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v7, v4, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v7, v4, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :goto_0
    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mCampaignUnit:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/b;->getLocalRequestId()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-nez v2, :cond_3

    .line 135
    .line 136
    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mCampaignUnit:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 137
    .line 138
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/b;->getLocalRequestId()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setLocalRequestId(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    iget-object v3, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mCampaignUnit:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 150
    .line 151
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/b;->getLocalRequestId()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    goto :goto_1

    .line 160
    :cond_3
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    iget-object v9, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mUnitId:Ljava/lang/String;

    .line 169
    .line 170
    const/4 v5, 0x0

    .line 171
    move-object v8, v1

    .line 172
    invoke-virtual/range {v4 .. v9}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(ZLjava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    :goto_1
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->o()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLocalAllowTrackClick()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    invoke-static {v0, v3, v1}, Lcom/mbridge/msdk/foundation/tools/a1;->a(Landroid/view/View;Ljava/lang/String;I)V

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mCampaignUnit:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 188
    .line 189
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->o()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/b;->setLocalRequestId(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    new-instance v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$g;

    .line 197
    .line 198
    invoke-direct {v1, p0, p1, v0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$g;-><init>(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;ILandroid/view/View;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    .line 203
    .line 204
    return-object v0
.end method

.method private buildRequestParams(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "CN"

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v2, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 9
    .line 10
    invoke-direct {v2}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const-string v6, "mof_testuid"

    .line 35
    .line 36
    invoke-static {v5, v6}, Lcom/mbridge/msdk/foundation/tools/b1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_1

    .line 45
    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    const-string v6, "mof_uid"

    .line 51
    .line 52
    invoke-static {v5, v6}, Lcom/mbridge/msdk/foundation/tools/b1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    :cond_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    :try_start_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-nez v7, :cond_2

    .line 69
    .line 70
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-virtual {v7, v6}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    if-eqz v7, :cond_2

    .line 79
    .line 80
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-virtual {v7, v6}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {v7}, Lcom/mbridge/msdk/setting/b;->k()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 93
    :catch_0
    :cond_2
    move-object v7, v0

    .line 94
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    const-string v9, "mcc"

    .line 99
    .line 100
    invoke-static {v8, v9}, Lcom/mbridge/msdk/foundation/tools/b1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    const-string v11, "mnc"

    .line 109
    .line 110
    invoke-static {v10, v11}, Lcom/mbridge/msdk/foundation/tools/b1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    const-string v13, "rv_tid"

    .line 119
    .line 120
    invoke-static {v12, v13}, Lcom/mbridge/msdk/foundation/tools/b1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v14

    .line 128
    const-string v15, "ecid"

    .line 129
    .line 130
    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v14

    .line 134
    if-eqz v14, :cond_3

    .line 135
    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    invoke-static {v14, v15}, Lcom/mbridge/msdk/foundation/tools/b1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v14

    .line 144
    :goto_1
    move-object/from16 v16, v0

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getEcTemplateId()J

    .line 148
    .line 149
    .line 150
    move-result-wide v16

    .line 151
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v14

    .line 155
    goto :goto_1

    .line 156
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    move-object/from16 v17, v15

    .line 161
    .line 162
    const-string/jumbo v15, "tplgp"

    .line 163
    .line 164
    .line 165
    invoke-static {v0, v15}, Lcom/mbridge/msdk/foundation/tools/b1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    move-object/from16 v18, v0

    .line 170
    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    move-object/from16 v19, v15

    .line 176
    .line 177
    const-string/jumbo v15, "v_fmd5"

    .line 178
    .line 179
    .line 180
    invoke-static {v0, v15}, Lcom/mbridge/msdk/foundation/tools/b1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    move-object/from16 v20, v0

    .line 185
    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    move-object/from16 v21, v15

    .line 191
    .line 192
    const-string v15, "i_fmd5"

    .line 193
    .line 194
    invoke-static {v0, v15}, Lcom/mbridge/msdk/foundation/tools/b1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    move-object/from16 v22, v0

    .line 199
    .line 200
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 201
    .line 202
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 203
    .line 204
    .line 205
    move-result-object v23

    .line 206
    move-object/from16 v24, v15

    .line 207
    .line 208
    invoke-virtual/range {v23 .. v23}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v15

    .line 212
    move-object/from16 v23, v12

    .line 213
    .line 214
    const-string v12, "app_id"

    .line 215
    .line 216
    invoke-static {v0, v12, v15}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 220
    .line 221
    new-instance v15, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/controller/a;->c()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    invoke-static {v6}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    const-string/jumbo v15, "sign"

    .line 249
    .line 250
    .line 251
    invoke-static {v0, v15, v6}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 255
    .line 256
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    move-object/from16 v25, v15

    .line 261
    .line 262
    const-string v15, ""

    .line 263
    .line 264
    if-eqz v6, :cond_4

    .line 265
    .line 266
    move-object/from16 v26, v12

    .line 267
    .line 268
    move-object v6, v15

    .line 269
    goto :goto_3

    .line 270
    :cond_4
    move-object v6, v4

    .line 271
    move-object/from16 v26, v12

    .line 272
    .line 273
    :goto_3
    const-string v12, "r_id"

    .line 274
    .line 275
    invoke-static {v0, v12, v6}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 279
    .line 280
    filled-new-array {v3}, [Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    const-string v12, "e"

    .line 289
    .line 290
    invoke-static {v0, v12, v6}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 294
    .line 295
    const-string v6, "mof_type"

    .line 296
    .line 297
    const-string v12, "1"

    .line 298
    .line 299
    invoke-static {v0, v6, v12}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 303
    .line 304
    const-string v6, "h5_type"

    .line 305
    .line 306
    invoke-static {v0, v6, v12}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 310
    .line 311
    const-string v6, "mof"

    .line 312
    .line 313
    invoke-static {v0, v6, v12}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-eqz v0, :cond_5

    .line 321
    .line 322
    move-object/from16 v0, v16

    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_5
    move-object v0, v7

    .line 326
    :goto_4
    iget-object v6, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 327
    .line 328
    const-string v7, "country_code"

    .line 329
    .line 330
    invoke-static {v6, v7, v0}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 334
    .line 335
    const-string v6, "mof_ver"

    .line 336
    .line 337
    invoke-static {v0, v6, v12}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 341
    .line 342
    const-string v6, "parent_exchange"

    .line 343
    .line 344
    invoke-virtual {v0, v6, v15}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    const/16 v6, 0x5e

    .line 352
    .line 353
    if-eq v0, v6, :cond_7

    .line 354
    .line 355
    const/16 v6, 0x11f

    .line 356
    .line 357
    if-eq v0, v6, :cond_6

    .line 358
    .line 359
    goto :goto_5

    .line 360
    :cond_6
    const-string v15, "interstitial_video"

    .line 361
    .line 362
    goto :goto_5

    .line 363
    :cond_7
    const-string v15, "rewarded_video"

    .line 364
    .line 365
    :goto_5
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 366
    .line 367
    const-string v6, "parent_ad_type"

    .line 368
    .line 369
    invoke-virtual {v0, v6, v15}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 373
    .line 374
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getReq_ext_data()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v6

    .line 378
    const-string v7, "oneId"

    .line 379
    .line 380
    invoke-virtual {v0, v7, v6}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    const-string v6, "parent_template_id"

    .line 388
    .line 389
    if-nez v0, :cond_8

    .line 390
    .line 391
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 392
    .line 393
    invoke-virtual {v0, v6, v14}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    goto :goto_6

    .line 397
    :cond_8
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 398
    .line 399
    const-string v7, "404"

    .line 400
    .line 401
    invoke-virtual {v0, v6, v7}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    :goto_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    if-eqz v0, :cond_9

    .line 409
    .line 410
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 411
    .line 412
    const-string/jumbo v6, "uc_parent_unit"

    .line 413
    .line 414
    .line 415
    invoke-static {v0, v6, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    goto :goto_7

    .line 419
    :cond_9
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 420
    .line 421
    const-string v6, "parent_unit"

    .line 422
    .line 423
    invoke-static {v0, v6, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    :goto_7
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 427
    .line 428
    invoke-static {v0, v11, v10}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 432
    .line 433
    invoke-static {v0, v9, v8}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    new-instance v2, Lorg/json/JSONObject;

    .line 437
    .line 438
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 439
    .line 440
    .line 441
    :try_start_1
    const-string v0, "crt_cid"

    .line 442
    .line 443
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    .line 445
    .line 446
    const-string v0, "crt_rid"

    .line 447
    .line 448
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 449
    .line 450
    .line 451
    move-object/from16 v0, v23

    .line 452
    .line 453
    invoke-virtual {v2, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    .line 455
    .line 456
    move-object/from16 v0, v17

    .line 457
    .line 458
    invoke-virtual {v2, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    .line 460
    .line 461
    move-object/from16 v4, v18

    .line 462
    .line 463
    move-object/from16 v0, v19

    .line 464
    .line 465
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 466
    .line 467
    .line 468
    move-object/from16 v4, v20

    .line 469
    .line 470
    move-object/from16 v0, v21

    .line 471
    .line 472
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 473
    .line 474
    .line 475
    move-object/from16 v4, v22

    .line 476
    .line 477
    move-object/from16 v0, v24

    .line 478
    .line 479
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 480
    .line 481
    .line 482
    const-string v0, "h5_t"

    .line 483
    .line 484
    const/4 v4, 0x1

    .line 485
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 486
    .line 487
    .line 488
    const-string v0, "mof_t"

    .line 489
    .line 490
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 491
    .line 492
    .line 493
    goto :goto_8

    .line 494
    :catch_1
    move-exception v0

    .line 495
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 496
    .line 497
    .line 498
    :goto_8
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    iget-object v2, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 503
    .line 504
    const-string v4, "mof_data"

    .line 505
    .line 506
    invoke-static {v2, v4, v0}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 510
    .line 511
    const-string v2, "offer_id"

    .line 512
    .line 513
    invoke-static {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 517
    .line 518
    const-string v2, "offset"

    .line 519
    .line 520
    const-string v3, "0"

    .line 521
    .line 522
    invoke-static {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 526
    .line 527
    const-string v2, "category"

    .line 528
    .line 529
    invoke-static {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 533
    .line 534
    const-string v2, "only_impression"

    .line 535
    .line 536
    invoke-static {v0, v2, v12}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 540
    .line 541
    const-string v2, "ping_mode"

    .line 542
    .line 543
    invoke-static {v0, v2, v12}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 547
    .line 548
    const-string v2, "http_req"

    .line 549
    .line 550
    const-string v3, "2"

    .line 551
    .line 552
    invoke-static {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 556
    .line 557
    const-string v2, "ad_num"

    .line 558
    .line 559
    const-string v3, "20"

    .line 560
    .line 561
    invoke-static {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 565
    .line 566
    const-string/jumbo v2, "tnum"

    .line 567
    .line 568
    .line 569
    invoke-static {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 573
    .line 574
    const-string v2, "api_version"

    .line 575
    .line 576
    const-string v3, "2.3"

    .line 577
    .line 578
    invoke-static {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 582
    .line 583
    .line 584
    move-result v0

    .line 585
    if-eqz v0, :cond_a

    .line 586
    .line 587
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 588
    .line 589
    const-string v2, "92762"

    .line 590
    .line 591
    move-object/from16 v3, v26

    .line 592
    .line 593
    invoke-static {v0, v3, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 597
    .line 598
    const-string v2, "92762936dcbdd57fe235fd7cf61c2e93da3c4"

    .line 599
    .line 600
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    move-object/from16 v3, v25

    .line 605
    .line 606
    invoke-static {v0, v3, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    const-string v5, "117361"

    .line 610
    .line 611
    :cond_a
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 612
    .line 613
    const-string/jumbo v2, "unit_id"

    .line 614
    .line 615
    .line 616
    invoke-static {v0, v2, v5}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    iget-object v0, v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 620
    .line 621
    const-string v2, "dy_view"

    .line 622
    .line 623
    invoke-static {v0, v2, v12}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    return-void
.end method

.method private buildScrollViewGroup()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->viewMofferLayout:Lcom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMainOfferCampaignEx:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 24
    .line 25
    const/4 v1, -0x2

    .line 26
    const/4 v2, -0x1

    .line 27
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 42
    .line 43
    const/16 v2, 0x11

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 46
    .line 47
    .line 48
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mCampaignUnit:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/mbridge/msdk/foundation/entity/b;->ads:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-ge v1, v0, :cond_2

    .line 57
    .line 58
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->buildItemView(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mObservableScrollView:Lcom/mbridge/msdk/video/dynview/widget/ObservableScrollView;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mObservableScrollView:Lcom/mbridge/msdk/video/dynview/widget/ObservableScrollView;

    .line 80
    .line 81
    new-instance v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$f;

    .line 82
    .line 83
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$f;-><init>(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_1
    return-void
.end method

.method private callBackClick(Lcom/mbridge/msdk/video/module/listener/a;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/16 v0, 0x80

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-interface {p1, v0, v1}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private createMoreOfferList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->viewMofferLayout:Lcom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "mbridge_moreoffer_hls"

    .line 7
    .line 8
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->findID(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/mbridge/msdk/video/dynview/widget/ObservableScrollView;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mObservableScrollView:Lcom/mbridge/msdk/video/dynview/widget/ObservableScrollView;

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->buildScrollViewGroup()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->addLikeTextView()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->showView()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private createMoreOfferView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mCampaignUnit:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mCampaignUnit:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    invoke-direct {p0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->setMoreOfferLayoutCallBack()V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->createMoreOfferList()V

    .line 34
    .line 35
    .line 36
    :cond_3
    :goto_0
    return-void
.end method

.method private doAdmfContorl()V
    .locals 5

    .line 1
    const-string v0, "admf"

    .line 2
    .line 3
    const-string v1, "admftm"

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMainOfferCampaignEx:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 6
    .line 7
    if-eqz v2, :cond_5

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMoreOfferJsonData()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMainOfferCampaignEx:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMoreOfferJsonData()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget v3, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mFromType:I

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    if-eq v3, v4, :cond_2

    .line 35
    .line 36
    const/4 v4, 0x2

    .line 37
    if-eq v3, v4, :cond_1

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string v3, "endcard_url"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const-string/jumbo v3, "template_url"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :goto_0
    if-nez v2, :cond_3

    .line 58
    .line 59
    return-void

    .line 60
    :cond_3
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_4

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iput v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->admftm:I

    .line 71
    .line 72
    :cond_4
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_6

    .line 77
    .line 78
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iput v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->admf:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_5
    :goto_1
    return-void

    .line 86
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v1, "MOfferModel"

    .line 91
    .line 92
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_6
    :goto_3
    return-void
.end method

.method private doControllableImpOnRequest()V
    .locals 5

    .line 1
    const-string v0, "117361"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mCampaignUnit:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    :try_start_0
    invoke-static {v1, v3, v2, v0}, Lcom/mbridge/msdk/video/dynview/request/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;IILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-boolean v2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->isOnlyImpShow:Z

    .line 14
    .line 15
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mCampaignUnit:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mCampaignUnit:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget v2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->admf:I

    .line 35
    .line 36
    if-lt v2, v1, :cond_2

    .line 37
    .line 38
    iput v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->admf:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    goto :goto_3

    .line 43
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mImpressionId:Ljava/util/List;

    .line 44
    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mImpressionId:Ljava/util/List;

    .line 53
    .line 54
    :cond_3
    move v1, v3

    .line 55
    :goto_1
    iget v2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->admf:I

    .line 56
    .line 57
    if-ge v1, v2, :cond_5

    .line 58
    .line 59
    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mImpressionId:Ljava/util/List;

    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mCampaignUnit:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 73
    .line 74
    invoke-static {v2, v1, v3, v0}, Lcom/mbridge/msdk/video/dynview/request/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;IILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mImpressionId:Ljava/util/List;

    .line 78
    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "MOfferModel"

    .line 94
    .line 95
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_5
    return-void
.end method

.method private doControllableImpOnShow(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mCampaignUnit:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mCampaignUnit:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mControlShowSize:I

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    iget v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->admf:I

    .line 28
    .line 29
    add-int/2addr v1, p1

    .line 30
    iput v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mControlShowSize:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    goto :goto_3

    .line 35
    :cond_2
    :goto_0
    iget v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mControlShowSize:I

    .line 36
    .line 37
    if-lt v1, v0, :cond_3

    .line 38
    .line 39
    iput v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mControlShowSize:I

    .line 40
    .line 41
    :cond_3
    :goto_1
    iget v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mControlShowSize:I

    .line 42
    .line 43
    if-ge p1, v0, :cond_5

    .line 44
    .line 45
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mImpressionId:Ljava/util/List;

    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mCampaignUnit:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 59
    .line 60
    const-string v1, "117361"

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-static {v0, p1, v2, v1}, Lcom/mbridge/msdk/video/dynview/request/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;IILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mImpressionId:Ljava/util/List;

    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v0, "MOfferModel"

    .line 83
    .line 84
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_5
    return-void
.end method

.method private findID(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "id"

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/foundation/tools/h0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method private initData()V
    .locals 12

    .line 1
    const-string v0, "mcd"

    .line 2
    .line 3
    const-string v1, "oneId"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMainOfferCampaignEx:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 6
    .line 7
    if-eqz v2, :cond_8

    .line 8
    .line 9
    iget-object v3, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    invoke-direct {p0, v2}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->buildRequestParams(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance v3, Lcom/mbridge/msdk/video/dynview/request/b;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-direct {v3, v2}, Lcom/mbridge/msdk/video/dynview/request/b;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    new-instance v7, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$c;

    .line 31
    .line 32
    invoke-direct {v7, p0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$c;-><init>(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v2, v2, Lcom/mbridge/msdk/foundation/same/net/utils/d;->Z:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMainOfferCampaignEx:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getReq_ext_data()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-nez v4, :cond_6

    .line 52
    .line 53
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 54
    .line 55
    iget-object v5, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMainOfferCampaignEx:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getReq_ext_data()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v5, "mof_domain"

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-nez v6, :cond_2

    .line 75
    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v5, "/openapi/ad/v3"

    .line 85
    .line 86
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    :goto_0
    const-string v5, "parent_id"

    .line 97
    .line 98
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-nez v6, :cond_3

    .line 107
    .line 108
    iget-object v6, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 109
    .line 110
    const-string v8, "mof_parent_id"

    .line 111
    .line 112
    invoke-static {v6, v8, v5}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_3
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-nez v6, :cond_4

    .line 124
    .line 125
    iget-object v6, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 126
    .line 127
    invoke-static {v6, v1, v5}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-nez v4, :cond_5

    .line 139
    .line 140
    iget-object v4, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 141
    .line 142
    invoke-static {v4, v0, v1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_5
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMainOfferCampaignEx:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v7, v0}, Lcom/mbridge/msdk/foundation/same/net/c;->setUnitId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .line 153
    .line 154
    :cond_6
    move-object v5, v2

    .line 155
    goto :goto_2

    .line 156
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const-string v1, "MOfferModel"

    .line 161
    .line 162
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->Z:Ljava/lang/String;

    .line 170
    .line 171
    move-object v5, v0

    .line 172
    :goto_2
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    .line 173
    .line 174
    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 175
    .line 176
    .line 177
    iget-boolean v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mIsRetry:Z

    .line 178
    .line 179
    if-eqz v1, :cond_7

    .line 180
    .line 181
    const-string v1, "retry"

    .line 182
    .line 183
    const-string v2, "1"

    .line 184
    .line 185
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    :cond_7
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMainOfferCampaignEx:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 193
    .line 194
    const-string v4, "m_mof_initiate"

    .line 195
    .line 196
    invoke-virtual {v1, v4, v2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    .line 197
    .line 198
    .line 199
    iget-object v6, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 200
    .line 201
    const-string v9, "more_offer"

    .line 202
    .line 203
    const-wide/16 v10, 0x7530

    .line 204
    .line 205
    const/4 v4, 0x1

    .line 206
    const/4 v8, 0x1

    .line 207
    invoke-virtual/range {v3 .. v11}, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->getLoadOrSetting(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Lcom/mbridge/msdk/foundation/same/net/b;ZLjava/lang/String;J)V

    .line 208
    .line 209
    .line 210
    invoke-direct {p0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->doAdmfContorl()V

    .line 211
    .line 212
    .line 213
    :cond_8
    :goto_3
    return-void
.end method

.method private initView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "mbridge_reward_more_offer_view"

    .line 7
    .line 8
    const-string v2, "layout"

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/h0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->viewMofferLayout:Lcom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;

    .line 29
    .line 30
    return-void
.end method

.method private release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->cacheImpressionReportList:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->cacheImpressionReportList:Ljava/util/List;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->cacheOnlyImpressionReportList:Ljava/util/List;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->cacheOnlyImpressionReportList:Ljava/util/List;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method private setCallbackForLogicVisibleView(Landroid/view/View;I)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    div-int/lit8 p1, p1, 0x5

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-le v0, p1, :cond_1

    .line 25
    .line 26
    move p1, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    :goto_0
    if-eqz v1, :cond_3

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mImpressionId:Ljava/util/List;

    .line 34
    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->onItemExposeListener:Lcom/mbridge/msdk/video/dynview/endcard/expose/OnItemExposeListener;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mImpressionId:Ljava/util/List;

    .line 53
    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->onItemExposeListener:Lcom/mbridge/msdk/video/dynview/endcard/expose/OnItemExposeListener;

    .line 62
    .line 63
    invoke-interface {p1, v2, p2}, Lcom/mbridge/msdk/video/dynview/endcard/expose/OnItemExposeListener;->onItemViewVisible(ZI)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catch_0
    move-exception p1

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget p1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->admf:I

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->doControllableImpOnShow(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string p2, "MOfferModel"

    .line 82
    .line 83
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    :goto_2
    return-void
.end method

.method private setMoreOfferLayoutCallBack()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->viewMofferLayout:Lcom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$d;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$d;-><init>(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;->setMoreOfferCacheReportCallBack(Lcom/mbridge/msdk/video/dynview/moffer/b;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->viewMofferLayout:Lcom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;

    .line 15
    .line 16
    new-instance v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$e;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$e;-><init>(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;->setMoreOfferShowFailedCallBack(Lcom/mbridge/msdk/video/dynview/moffer/d;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private setOfferData(Ljava/util/List;ILcom/mbridge/msdk/videocommon/view/RoundImageView;Landroid/widget/TextView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;I",
            "Lcom/mbridge/msdk/videocommon/view/RoundImageView;",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_4

    .line 2
    .line 3
    if-eqz p4, :cond_4

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMainOfferCampaignEx:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_4

    .line 22
    .line 23
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    const/4 p2, 0x0

    .line 33
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {p2}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$h;

    .line 47
    .line 48
    invoke-direct {v1, p0, p3}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$h;-><init>(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;Lcom/mbridge/msdk/videocommon/view/RoundImageView;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0, v1}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_4

    .line 63
    .line 64
    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMainOfferCampaignEx:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    const-string p3, "mof_textmod"

    .line 71
    .line 72
    invoke-static {p2, p3}, Lcom/mbridge/msdk/foundation/tools/b1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    if-nez p3, :cond_3

    .line 81
    .line 82
    const-string p3, "1"

    .line 83
    .line 84
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-eqz p2, :cond_3

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    const/16 p1, 0x8

    .line 99
    .line 100
    invoke-virtual {p4, p1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public buildMofferAd(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMainOfferCampaignEx:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->initView()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->initData()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public checkViewVisiableState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {p0, v1, v0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->setCallbackForLogicVisibleView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "MOfferModel"

    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public getECParentTemplateCode()J
    .locals 4

    .line 1
    const-wide/16 v0, 0x194

    .line 2
    .line 3
    :try_start_0
    const-string v2, ""

    .line 4
    .line 5
    iget-object v3, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mParam:Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "parent_template_id"

    .line 14
    .line 15
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    return-wide v0

    .line 31
    :cond_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-wide v0

    .line 36
    :goto_1
    sget-boolean v3, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-wide v0
.end method

.method public getmMainOfferCampaignEx()Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMainOfferCampaignEx:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    return-object v0
.end method

.method public mofDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMoreOfferLayoutListener:Lcom/mbridge/msdk/video/dynview/listener/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMoreOfferLayoutListener:Lcom/mbridge/msdk/video/dynview/listener/g;

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->onItemExposeListener:Lcom/mbridge/msdk/video/dynview/endcard/expose/OnItemExposeListener;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->onItemExposeListener:Lcom/mbridge/msdk/video/dynview/endcard/expose/OnItemExposeListener;

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMoreOfferShowCallBack:Lcom/mbridge/msdk/video/dynview/moffer/c;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMoreOfferShowCallBack:Lcom/mbridge/msdk/video/dynview/moffer/c;

    .line 19
    .line 20
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mNotifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mNotifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    .line 25
    .line 26
    :cond_3
    return-void
.end method

.method public setFromType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mFromType:I

    .line 2
    .line 3
    return-void
.end method

.method public setIsRetry(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mIsRetry:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMoreOfferListener(Lcom/mbridge/msdk/video/dynview/listener/g;Lcom/mbridge/msdk/video/module/listener/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMoreOfferLayoutListener:Lcom/mbridge/msdk/video/dynview/listener/g;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mNotifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    .line 4
    .line 5
    return-void
.end method

.method public showView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMoreOfferLayoutListener:Lcom/mbridge/msdk/video/dynview/listener/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->viewMofferLayout:Lcom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;

    .line 7
    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mCampaignUnit:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/video/dynview/listener/g;->a(Landroid/view/ViewGroup;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->isOnlyImpShow:Z

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mCampaignUnit:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    const-string v2, "117361"

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static {v0, v3, v1, v2}, Lcom/mbridge/msdk/video/dynview/request/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;IILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mHasReportMofScenes:Z

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    .line 36
    .line 37
    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    iget v2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mFromType:I

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, ""

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v2, "scene"

    .line 60
    .line 61
    invoke-virtual {v0, v2, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mMainOfferCampaignEx:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 69
    .line 70
    const-string v3, "m_mof_scenes"

    .line 71
    .line 72
    invoke-virtual {v1, v3, v2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    return-void

    .line 76
    :cond_4
    :goto_0
    const/4 v1, -0x1

    .line 77
    const-string v2, "more Offer create fail"

    .line 78
    .line 79
    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/video/dynview/listener/g;->a(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
