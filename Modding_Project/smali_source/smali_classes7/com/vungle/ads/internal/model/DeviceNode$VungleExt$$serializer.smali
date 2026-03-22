.class public final Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$$serializer;
.super Ljava/lang/Object;
.source "DeviceNode.kt"

# interfaces
.implements Lvt/m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvt/m0<",
        "Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lms/c;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$$serializer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$$serializer;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$$serializer;->INSTANCE:Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$$serializer;

    .line 7
    .line 8
    new-instance v1, Lvt/h2;

    .line 9
    .line 10
    const-string v2, "com.vungle.ads.internal.model.DeviceNode.VungleExt"

    .line 11
    .line 12
    const/16 v3, 0x16

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lvt/h2;-><init>(Ljava/lang/String;Lvt/m0;I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "is_google_play_services_available"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v0, "app_set_id"

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string v0, "app_set_id_scope"

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-string v0, "battery_level"

    .line 34
    .line 35
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const-string v0, "battery_state"

    .line 39
    .line 40
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    const-string v0, "battery_saver_enabled"

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    const-string v0, "connection_type"

    .line 49
    .line 50
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    const-string v0, "connection_type_detail"

    .line 54
    .line 55
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    const-string v0, "locale"

    .line 59
    .line 60
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    const-string v0, "language"

    .line 64
    .line 65
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    const-string v0, "time_zone"

    .line 69
    .line 70
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    const-string v0, "volume_level"

    .line 74
    .line 75
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 76
    .line 77
    .line 78
    const-string v0, "sound_enabled"

    .line 79
    .line 80
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    const-string v0, "is_tv"

    .line 84
    .line 85
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    const-string v0, "sd_card_available"

    .line 89
    .line 90
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 91
    .line 92
    .line 93
    const-string v0, "is_sideload_enabled"

    .line 94
    .line 95
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 96
    .line 97
    .line 98
    const-string v0, "gaid"

    .line 99
    .line 100
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    const-string v0, "amazon_advertising_id"

    .line 104
    .line 105
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 106
    .line 107
    .line 108
    const-string v0, "sit"

    .line 109
    .line 110
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 111
    .line 112
    .line 113
    const-string v0, "oit"

    .line 114
    .line 115
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 116
    .line 117
    .line 118
    const-string v0, "ort"

    .line 119
    .line 120
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 121
    .line 122
    .line 123
    const-string v0, "obt"

    .line 124
    .line 125
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 126
    .line 127
    .line 128
    sput-object v1, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 129
    .line 130
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lvt/w2;->a:Lvt/w2;

    .line 2
    .line 3
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lvt/v0;->a:Lvt/v0;

    .line 8
    .line 9
    invoke-static {v2}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v11, Lvt/g1;->a:Lvt/g1;

    .line 46
    .line 47
    invoke-static {v11}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    invoke-static {v11}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 52
    .line 53
    .line 54
    move-result-object v13

    .line 55
    invoke-static {v11}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 56
    .line 57
    .line 58
    move-result-object v14

    .line 59
    invoke-static {v11}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    const/16 v15, 0x16

    .line 64
    .line 65
    new-array v15, v15, [Lkotlinx/serialization/KSerializer;

    .line 66
    .line 67
    sget-object v16, Lvt/i;->a:Lvt/i;

    .line 68
    .line 69
    const/16 v17, 0x0

    .line 70
    .line 71
    aput-object v16, v15, v17

    .line 72
    .line 73
    const/16 v17, 0x1

    .line 74
    .line 75
    aput-object v1, v15, v17

    .line 76
    .line 77
    const/4 v1, 0x2

    .line 78
    aput-object v3, v15, v1

    .line 79
    .line 80
    sget-object v1, Lvt/l0;->a:Lvt/l0;

    .line 81
    .line 82
    const/4 v3, 0x3

    .line 83
    aput-object v1, v15, v3

    .line 84
    .line 85
    const/4 v3, 0x4

    .line 86
    aput-object v4, v15, v3

    .line 87
    .line 88
    const/4 v3, 0x5

    .line 89
    aput-object v2, v15, v3

    .line 90
    .line 91
    const/4 v3, 0x6

    .line 92
    aput-object v5, v15, v3

    .line 93
    .line 94
    const/4 v3, 0x7

    .line 95
    aput-object v6, v15, v3

    .line 96
    .line 97
    const/16 v3, 0x8

    .line 98
    .line 99
    aput-object v7, v15, v3

    .line 100
    .line 101
    const/16 v3, 0x9

    .line 102
    .line 103
    aput-object v8, v15, v3

    .line 104
    .line 105
    const/16 v3, 0xa

    .line 106
    .line 107
    aput-object v9, v15, v3

    .line 108
    .line 109
    const/16 v3, 0xb

    .line 110
    .line 111
    aput-object v1, v15, v3

    .line 112
    .line 113
    const/16 v1, 0xc

    .line 114
    .line 115
    aput-object v2, v15, v1

    .line 116
    .line 117
    const/16 v1, 0xd

    .line 118
    .line 119
    aput-object v16, v15, v1

    .line 120
    .line 121
    const/16 v1, 0xe

    .line 122
    .line 123
    aput-object v2, v15, v1

    .line 124
    .line 125
    const/16 v1, 0xf

    .line 126
    .line 127
    aput-object v16, v15, v1

    .line 128
    .line 129
    const/16 v1, 0x10

    .line 130
    .line 131
    aput-object v10, v15, v1

    .line 132
    .line 133
    const/16 v1, 0x11

    .line 134
    .line 135
    aput-object v0, v15, v1

    .line 136
    .line 137
    const/16 v0, 0x12

    .line 138
    .line 139
    aput-object v12, v15, v0

    .line 140
    .line 141
    const/16 v0, 0x13

    .line 142
    .line 143
    aput-object v13, v15, v0

    .line 144
    .line 145
    const/16 v0, 0x14

    .line 146
    .line 147
    aput-object v14, v15, v0

    .line 148
    .line 149
    const/16 v0, 0x15

    .line 150
    .line 151
    aput-object v11, v15, v0

    .line 152
    .line 153
    return-object v15
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;
    .locals 64
    .param p1    # Lkotlinx/serialization/encoding/Decoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/c;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/encoding/c;->decodeSequentially()Z

    move-result v2

    const/16 v11, 0xa

    const/16 v12, 0x9

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/4 v3, 0x3

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/encoding/c;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    sget-object v8, Lvt/w2;->a:Lvt/w2;

    invoke-interface {v0, v1, v7, v8, v9}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Lvt/v0;->a:Lvt/v0;

    invoke-interface {v0, v1, v6, v10, v9}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/c;->decodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F

    move-result v3

    invoke-interface {v0, v1, v4, v8, v9}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/c;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v10

    invoke-interface {v0, v1, v14, v8, v9}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v0, v1, v13, v8, v9}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v0, v1, v5, v8, v9}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v1, v12, v8, v9}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0, v1, v11, v8, v9}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/16 v15, 0xb

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/c;->decodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F

    move-result v15

    const/16 v9, 0xc

    invoke-interface {v0, v1, v9}, Lkotlinx/serialization/encoding/c;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v9

    move/from16 v22, v2

    const/16 v2, 0xd

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/c;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    move/from16 v21, v2

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/c;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v2

    move/from16 v20, v2

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/c;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    move/from16 v19, v2

    move-object/from16 v18, v7

    const/16 v2, 0x10

    const/4 v7, 0x0

    invoke-interface {v0, v1, v2, v8, v7}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    const/16 v2, 0x11

    invoke-interface {v0, v1, v2, v8, v7}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v8, Lvt/g1;->a:Lvt/g1;

    move-object/from16 v17, v2

    const/16 v2, 0x12

    invoke-interface {v0, v1, v2, v8, v7}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    const/16 v2, 0x13

    invoke-interface {v0, v1, v2, v8, v7}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 p1, v2

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2, v8, v7}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v24, v2

    const/16 v2, 0x15

    invoke-interface {v0, v1, v2, v8, v7}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const v7, 0x3fffff

    move/from16 v43, v3

    move/from16 v39, v7

    move/from16 v52, v9

    move/from16 v45, v10

    move/from16 v51, v15

    move/from16 v55, v19

    move/from16 v54, v20

    move/from16 v53, v21

    move/from16 v40, v22

    move-object/from16 v7, p1

    move-object v10, v2

    move-object/from16 v2, v23

    goto/16 :goto_5

    :cond_0
    move v2, v7

    move-object v7, v9

    const/4 v9, 0x0

    move/from16 v35, v2

    move-object v2, v7

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v10, v6

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v26, v15

    move/from16 v24, v8

    move/from16 v29, v24

    move/from16 v30, v29

    move/from16 v31, v30

    move/from16 v32, v31

    move/from16 v33, v32

    move/from16 v25, v9

    move/from16 v34, v25

    move-object/from16 v9, v26

    :goto_0
    if-eqz v35, :cond_1

    move-object/from16 v36, v2

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v2}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    const/16 v2, 0x15

    move-object/from16 v37, v6

    sget-object v6, Lvt/g1;->a:Lvt/g1;

    invoke-interface {v0, v1, v2, v6, v10}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/high16 v2, 0x200000

    :goto_1
    or-int/2addr v8, v2

    :goto_2
    move-object/from16 v2, v36

    move-object/from16 v6, v37

    goto :goto_0

    :pswitch_1
    move-object/from16 v37, v6

    const/16 v2, 0x14

    sget-object v6, Lvt/g1;->a:Lvt/g1;

    invoke-interface {v0, v1, v2, v6, v9}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/high16 v2, 0x100000

    goto :goto_1

    :pswitch_2
    move-object/from16 v37, v6

    sget-object v2, Lvt/g1;->a:Lvt/g1;

    const/16 v6, 0x13

    invoke-interface {v0, v1, v6, v2, v7}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/high16 v2, 0x80000

    goto :goto_1

    :pswitch_3
    move-object/from16 v37, v6

    const/16 v6, 0x13

    sget-object v2, Lvt/g1;->a:Lvt/g1;

    const/16 v6, 0x12

    invoke-interface {v0, v1, v6, v2, v11}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/high16 v2, 0x40000

    goto :goto_1

    :pswitch_4
    move-object/from16 v37, v6

    const/16 v6, 0x12

    sget-object v2, Lvt/w2;->a:Lvt/w2;

    const/16 v6, 0x11

    invoke-interface {v0, v1, v6, v2, v12}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/high16 v2, 0x20000

    goto :goto_1

    :pswitch_5
    move-object/from16 v37, v6

    const/16 v6, 0x11

    sget-object v2, Lvt/w2;->a:Lvt/w2;

    const/16 v6, 0x10

    invoke-interface {v0, v1, v6, v2, v5}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/high16 v2, 0x10000

    goto :goto_1

    :pswitch_6
    move-object/from16 v37, v6

    const/16 v2, 0xf

    const/16 v6, 0x10

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/c;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v24

    const v18, 0x8000

    or-int v8, v8, v18

    goto :goto_2

    :pswitch_7
    move-object/from16 v37, v6

    const/16 v2, 0xe

    const/16 v6, 0x10

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/c;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v32

    or-int/lit16 v8, v8, 0x4000

    goto :goto_2

    :pswitch_8
    move-object/from16 v37, v6

    const/16 v2, 0xd

    const/16 v6, 0x10

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/c;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v31

    or-int/lit16 v8, v8, 0x2000

    goto :goto_2

    :pswitch_9
    move-object/from16 v37, v6

    const/16 v2, 0xc

    const/16 v6, 0x10

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/c;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v29

    or-int/lit16 v8, v8, 0x1000

    goto/16 :goto_2

    :pswitch_a
    move-object/from16 v37, v6

    const/16 v2, 0xb

    const/16 v6, 0x10

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/c;->decodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F

    move-result v34

    or-int/lit16 v8, v8, 0x800

    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v37, v6

    const/16 v6, 0x10

    sget-object v2, Lvt/w2;->a:Lvt/w2;

    const/16 v6, 0xa

    invoke-interface {v0, v1, v6, v2, v13}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    or-int/lit16 v8, v8, 0x400

    goto/16 :goto_2

    :pswitch_c
    move-object/from16 v37, v6

    const/16 v6, 0xa

    sget-object v2, Lvt/w2;->a:Lvt/w2;

    const/16 v6, 0x9

    invoke-interface {v0, v1, v6, v2, v14}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    or-int/lit16 v8, v8, 0x200

    goto/16 :goto_2

    :pswitch_d
    move-object/from16 v37, v6

    const/16 v6, 0x9

    sget-object v2, Lvt/w2;->a:Lvt/w2;

    const/16 v6, 0x8

    invoke-interface {v0, v1, v6, v2, v15}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    or-int/lit16 v8, v8, 0x100

    goto/16 :goto_2

    :pswitch_e
    move-object/from16 v37, v6

    const/16 v6, 0x8

    sget-object v2, Lvt/w2;->a:Lvt/w2;

    const/4 v6, 0x7

    invoke-interface {v0, v1, v6, v2, v4}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    or-int/lit16 v8, v8, 0x80

    goto/16 :goto_2

    :pswitch_f
    move-object/from16 v37, v6

    const/4 v6, 0x7

    sget-object v2, Lvt/w2;->a:Lvt/w2;

    const/4 v6, 0x6

    invoke-interface {v0, v1, v6, v2, v3}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    or-int/lit8 v8, v8, 0x40

    goto/16 :goto_2

    :pswitch_10
    move-object/from16 v37, v6

    const/4 v2, 0x5

    const/4 v6, 0x6

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/c;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v33

    or-int/lit8 v8, v8, 0x20

    goto/16 :goto_2

    :pswitch_11
    move-object/from16 v37, v6

    const/4 v6, 0x6

    sget-object v2, Lvt/w2;->a:Lvt/w2;

    move-object/from16 v28, v3

    move-object/from16 v3, v37

    const/4 v6, 0x4

    invoke-interface {v0, v1, v6, v2, v3}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    or-int/lit8 v8, v8, 0x10

    move-object v6, v2

    :goto_3
    move-object/from16 v3, v28

    move-object/from16 v2, v36

    goto/16 :goto_0

    :pswitch_12
    move-object/from16 v28, v3

    move-object v3, v6

    const/4 v2, 0x3

    const/4 v6, 0x4

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/c;->decodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F

    move-result v25

    or-int/lit8 v8, v8, 0x8

    move-object v6, v3

    goto :goto_3

    :pswitch_13
    move-object/from16 v28, v3

    move-object v3, v6

    const/4 v6, 0x4

    sget-object v2, Lvt/v0;->a:Lvt/v0;

    move-object/from16 v27, v3

    move-object/from16 v3, v36

    const/4 v6, 0x2

    invoke-interface {v0, v1, v6, v2, v3}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    or-int/lit8 v8, v8, 0x4

    move-object/from16 v6, v27

    move-object/from16 v3, v28

    goto/16 :goto_0

    :pswitch_14
    move-object/from16 v28, v3

    move-object/from16 v27, v6

    move-object/from16 v3, v36

    const/4 v6, 0x2

    sget-object v2, Lvt/w2;->a:Lvt/w2;

    move-object/from16 v6, v26

    move-object/from16 v26, v3

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v2, v6}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    or-int/lit8 v8, v8, 0x2

    move-object/from16 v6, v27

    move-object/from16 v3, v28

    move-object/from16 v63, v26

    move-object/from16 v26, v2

    move-object/from16 v2, v63

    goto/16 :goto_0

    :pswitch_15
    move-object/from16 v28, v3

    move-object/from16 v27, v6

    move-object/from16 v6, v26

    move-object/from16 v26, v36

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/c;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v30

    or-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    :goto_4
    move-object/from16 v26, v6

    move-object/from16 v6, v27

    goto/16 :goto_0

    :pswitch_16
    move-object/from16 v28, v3

    move-object/from16 v27, v6

    move-object/from16 v6, v26

    move-object/from16 v26, v36

    const/4 v2, 0x0

    move/from16 v35, v2

    move-object/from16 v2, v26

    goto :goto_4

    :cond_1
    move-object/from16 v28, v3

    move-object/from16 v27, v6

    move-object/from16 v6, v26

    move-object/from16 v26, v2

    move-object v2, v5

    move-object/from16 v18, v6

    move/from16 v39, v8

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object v11, v13

    move-object v12, v14

    move-object v5, v15

    move/from16 v55, v24

    move/from16 v43, v25

    move-object/from16 v6, v26

    move-object/from16 v14, v28

    move/from16 v52, v29

    move/from16 v40, v30

    move/from16 v53, v31

    move/from16 v54, v32

    move/from16 v45, v33

    move/from16 v51, v34

    move-object v13, v4

    move-object/from16 v24, v9

    move-object/from16 v4, v27

    :goto_5
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;

    move-object/from16 v38, v0

    move-object/from16 v41, v18

    check-cast v41, Ljava/lang/String;

    move-object/from16 v42, v6

    check-cast v42, Ljava/lang/Integer;

    move-object/from16 v44, v4

    check-cast v44, Ljava/lang/String;

    move-object/from16 v46, v14

    check-cast v46, Ljava/lang/String;

    move-object/from16 v47, v13

    check-cast v47, Ljava/lang/String;

    move-object/from16 v48, v5

    check-cast v48, Ljava/lang/String;

    move-object/from16 v49, v12

    check-cast v49, Ljava/lang/String;

    move-object/from16 v50, v11

    check-cast v50, Ljava/lang/String;

    move-object/from16 v56, v2

    check-cast v56, Ljava/lang/String;

    move-object/from16 v57, v17

    check-cast v57, Ljava/lang/String;

    move-object/from16 v58, v16

    check-cast v58, Ljava/lang/Long;

    move-object/from16 v59, v7

    check-cast v59, Ljava/lang/Long;

    move-object/from16 v60, v24

    check-cast v60, Ljava/lang/Long;

    move-object/from16 v61, v10

    check-cast v61, Ljava/lang/Long;

    const/16 v62, 0x0

    invoke-direct/range {v38 .. v62}, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;-><init>(IZLjava/lang/String;Ljava/lang/Integer;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lvt/r2;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/d;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;->write$Self(Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/d;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lvt/m0$a;->a(Lvt/m0;)[Lkotlinx/serialization/KSerializer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
