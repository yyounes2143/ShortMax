.class public final Lcom/google/android/gms/internal/auth-api/zbav;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@21.4.0"


# static fields
.field public static final zba:Lcom/google/android/gms/common/Feature;

.field public static final zbb:Lcom/google/android/gms/common/Feature;

.field public static final zbc:Lcom/google/android/gms/common/Feature;

.field public static final zbd:Lcom/google/android/gms/common/Feature;

.field public static final zbe:Lcom/google/android/gms/common/Feature;

.field public static final zbf:Lcom/google/android/gms/common/Feature;

.field public static final zbg:Lcom/google/android/gms/common/Feature;

.field public static final zbh:Lcom/google/android/gms/common/Feature;

.field public static final zbi:Lcom/google/android/gms/common/Feature;

.field public static final zbj:Lcom/google/android/gms/common/Feature;

.field public static final zbk:Lcom/google/android/gms/common/Feature;

.field public static final zbl:Lcom/google/android/gms/common/Feature;

.field public static final zbm:Lcom/google/android/gms/common/Feature;

.field public static final zbn:Lcom/google/android/gms/common/Feature;

.field public static final zbo:Lcom/google/android/gms/common/Feature;

.field public static final zbp:Lcom/google/android/gms/common/Feature;

.field public static final zbq:Lcom/google/android/gms/common/Feature;

.field public static final zbr:Lcom/google/android/gms/common/Feature;

.field public static final zbs:Lcom/google/android/gms/common/Feature;

.field public static final zbt:Lcom/google/android/gms/common/Feature;

.field public static final zbu:Lcom/google/android/gms/common/Feature;

.field public static final zbv:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 2
    .line 3
    move-object v0, v1

    .line 4
    const-string v2, "auth_api_credentials_begin_sign_in"

    .line 5
    .line 6
    const-wide/16 v3, 0x9

    .line 7
    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 9
    .line 10
    .line 11
    sput-object v1, Lcom/google/android/gms/internal/auth-api/zbav;->zba:Lcom/google/android/gms/common/Feature;

    .line 12
    .line 13
    new-instance v2, Lcom/google/android/gms/common/Feature;

    .line 14
    .line 15
    move-object v1, v2

    .line 16
    const-string v3, "auth_api_credentials_sign_out"

    .line 17
    .line 18
    const-wide/16 v4, 0x2

    .line 19
    .line 20
    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 21
    .line 22
    .line 23
    sput-object v2, Lcom/google/android/gms/internal/auth-api/zbav;->zbb:Lcom/google/android/gms/common/Feature;

    .line 24
    .line 25
    new-instance v3, Lcom/google/android/gms/common/Feature;

    .line 26
    .line 27
    move-object v2, v3

    .line 28
    const-string v4, "auth_api_credentials_authorize"

    .line 29
    .line 30
    const-wide/16 v14, 0x1

    .line 31
    .line 32
    invoke-direct {v3, v4, v14, v15}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lcom/google/android/gms/internal/auth-api/zbav;->zbc:Lcom/google/android/gms/common/Feature;

    .line 36
    .line 37
    new-instance v4, Lcom/google/android/gms/common/Feature;

    .line 38
    .line 39
    move-object v3, v4

    .line 40
    const-string v5, "auth_api_credentials_revoke_access"

    .line 41
    .line 42
    invoke-direct {v4, v5, v14, v15}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 43
    .line 44
    .line 45
    sput-object v4, Lcom/google/android/gms/internal/auth-api/zbav;->zbd:Lcom/google/android/gms/common/Feature;

    .line 46
    .line 47
    new-instance v5, Lcom/google/android/gms/common/Feature;

    .line 48
    .line 49
    move-object v4, v5

    .line 50
    const-string v6, "auth_api_credentials_clear_token"

    .line 51
    .line 52
    invoke-direct {v5, v6, v14, v15}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 53
    .line 54
    .line 55
    sput-object v5, Lcom/google/android/gms/internal/auth-api/zbav;->zbe:Lcom/google/android/gms/common/Feature;

    .line 56
    .line 57
    new-instance v6, Lcom/google/android/gms/common/Feature;

    .line 58
    .line 59
    move-object v5, v6

    .line 60
    const-string v7, "auth_api_credentials_save_password"

    .line 61
    .line 62
    const-wide/16 v8, 0x4

    .line 63
    .line 64
    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 65
    .line 66
    .line 67
    sput-object v6, Lcom/google/android/gms/internal/auth-api/zbav;->zbf:Lcom/google/android/gms/common/Feature;

    .line 68
    .line 69
    new-instance v7, Lcom/google/android/gms/common/Feature;

    .line 70
    .line 71
    move-object v6, v7

    .line 72
    const-string v8, "auth_api_credentials_get_sign_in_intent"

    .line 73
    .line 74
    const-wide/16 v9, 0x6

    .line 75
    .line 76
    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 77
    .line 78
    .line 79
    sput-object v7, Lcom/google/android/gms/internal/auth-api/zbav;->zbg:Lcom/google/android/gms/common/Feature;

    .line 80
    .line 81
    new-instance v8, Lcom/google/android/gms/common/Feature;

    .line 82
    .line 83
    move-object v7, v8

    .line 84
    const-string v9, "auth_api_credentials_save_account_linking_token"

    .line 85
    .line 86
    const-wide/16 v10, 0x3

    .line 87
    .line 88
    invoke-direct {v8, v9, v10, v11}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 89
    .line 90
    .line 91
    sput-object v8, Lcom/google/android/gms/internal/auth-api/zbav;->zbh:Lcom/google/android/gms/common/Feature;

    .line 92
    .line 93
    new-instance v9, Lcom/google/android/gms/common/Feature;

    .line 94
    .line 95
    move-object v8, v9

    .line 96
    const-string v12, "auth_api_credentials_get_phone_number_hint_intent"

    .line 97
    .line 98
    invoke-direct {v9, v12, v10, v11}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 99
    .line 100
    .line 101
    sput-object v9, Lcom/google/android/gms/internal/auth-api/zbav;->zbi:Lcom/google/android/gms/common/Feature;

    .line 102
    .line 103
    new-instance v10, Lcom/google/android/gms/common/Feature;

    .line 104
    .line 105
    move-object v9, v10

    .line 106
    const-string v11, "auth_api_credentials_verify_with_google"

    .line 107
    .line 108
    invoke-direct {v10, v11, v14, v15}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 109
    .line 110
    .line 111
    sput-object v10, Lcom/google/android/gms/internal/auth-api/zbav;->zbj:Lcom/google/android/gms/common/Feature;

    .line 112
    .line 113
    new-instance v11, Lcom/google/android/gms/common/Feature;

    .line 114
    .line 115
    move-object v10, v11

    .line 116
    const-string v12, "auth_api_credentials_credential_provider"

    .line 117
    .line 118
    invoke-direct {v11, v12, v14, v15}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 119
    .line 120
    .line 121
    sput-object v11, Lcom/google/android/gms/internal/auth-api/zbav;->zbk:Lcom/google/android/gms/common/Feature;

    .line 122
    .line 123
    new-instance v12, Lcom/google/android/gms/common/Feature;

    .line 124
    .line 125
    move-object v11, v12

    .line 126
    const-string v13, "auth_api_credentials_save_webauthn_credential_specifics"

    .line 127
    .line 128
    invoke-direct {v12, v13, v14, v15}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 129
    .line 130
    .line 131
    sput-object v12, Lcom/google/android/gms/internal/auth-api/zbav;->zbl:Lcom/google/android/gms/common/Feature;

    .line 132
    .line 133
    new-instance v13, Lcom/google/android/gms/common/Feature;

    .line 134
    .line 135
    move-object v12, v13

    .line 136
    move-object/from16 v21, v0

    .line 137
    .line 138
    const-string v0, "auth_api_credentials_list_webauthn_credential_specifics"

    .line 139
    .line 140
    invoke-direct {v13, v0, v14, v15}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 141
    .line 142
    .line 143
    sput-object v13, Lcom/google/android/gms/internal/auth-api/zbav;->zbm:Lcom/google/android/gms/common/Feature;

    .line 144
    .line 145
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 146
    .line 147
    move-object v13, v0

    .line 148
    move-object/from16 v22, v1

    .line 149
    .line 150
    const-string v1, "auth_api_credentials_get_google_passkey_for_export"

    .line 151
    .line 152
    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 153
    .line 154
    .line 155
    sput-object v0, Lcom/google/android/gms/internal/auth-api/zbav;->zbn:Lcom/google/android/gms/common/Feature;

    .line 156
    .line 157
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 158
    .line 159
    move-object/from16 v23, v2

    .line 160
    .line 161
    move-wide v1, v14

    .line 162
    move-object v14, v0

    .line 163
    const-string v15, "auth_api_credentials_get_authentication_intent"

    .line 164
    .line 165
    invoke-direct {v0, v15, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 166
    .line 167
    .line 168
    sput-object v0, Lcom/google/android/gms/internal/auth-api/zbav;->zbo:Lcom/google/android/gms/common/Feature;

    .line 169
    .line 170
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 171
    .line 172
    move-object v15, v0

    .line 173
    move-object/from16 v24, v3

    .line 174
    .line 175
    const-string v3, "auth_api_credentials_get_registration_intent"

    .line 176
    .line 177
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 178
    .line 179
    .line 180
    sput-object v0, Lcom/google/android/gms/internal/auth-api/zbav;->zbp:Lcom/google/android/gms/common/Feature;

    .line 181
    .line 182
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 183
    .line 184
    move-object/from16 v16, v0

    .line 185
    .line 186
    const-string v3, "auth_api_credentials_check_key_availability"

    .line 187
    .line 188
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 189
    .line 190
    .line 191
    sput-object v0, Lcom/google/android/gms/internal/auth-api/zbav;->zbq:Lcom/google/android/gms/common/Feature;

    .line 192
    .line 193
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 194
    .line 195
    move-object/from16 v17, v0

    .line 196
    .line 197
    const-string v3, "auth_api_credentials_has_discoverable_key"

    .line 198
    .line 199
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 200
    .line 201
    .line 202
    sput-object v0, Lcom/google/android/gms/internal/auth-api/zbav;->zbr:Lcom/google/android/gms/common/Feature;

    .line 203
    .line 204
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 205
    .line 206
    move-object/from16 v18, v0

    .line 207
    .line 208
    const-string v3, "auth_api_credentials_validate_calling_browser"

    .line 209
    .line 210
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 211
    .line 212
    .line 213
    sput-object v0, Lcom/google/android/gms/internal/auth-api/zbav;->zbs:Lcom/google/android/gms/common/Feature;

    .line 214
    .line 215
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 216
    .line 217
    move-object/from16 v19, v0

    .line 218
    .line 219
    const-string v3, "auth_api_credentials_validate_rp_id_and_calling_package"

    .line 220
    .line 221
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 222
    .line 223
    .line 224
    sput-object v0, Lcom/google/android/gms/internal/auth-api/zbav;->zbt:Lcom/google/android/gms/common/Feature;

    .line 225
    .line 226
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 227
    .line 228
    move-object/from16 v20, v0

    .line 229
    .line 230
    const-string v3, "auth_api_credentials_get_credential_list_for_browser"

    .line 231
    .line 232
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 233
    .line 234
    .line 235
    sput-object v0, Lcom/google/android/gms/internal/auth-api/zbav;->zbu:Lcom/google/android/gms/common/Feature;

    .line 236
    .line 237
    move-object/from16 v0, v21

    .line 238
    .line 239
    move-object/from16 v1, v22

    .line 240
    .line 241
    move-object/from16 v2, v23

    .line 242
    .line 243
    move-object/from16 v3, v24

    .line 244
    .line 245
    filled-new-array/range {v0 .. v20}, [Lcom/google/android/gms/common/Feature;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    sput-object v0, Lcom/google/android/gms/internal/auth-api/zbav;->zbv:[Lcom/google/android/gms/common/Feature;

    .line 250
    .line 251
    return-void
.end method
