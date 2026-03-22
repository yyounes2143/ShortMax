.class public final Lcom/vungle/ads/internal/model/AdPayload$$serializer;
.super Ljava/lang/Object;
.source "AdPayload.kt"

# interfaces
.implements Lvt/m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/AdPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvt/m0<",
        "Lcom/vungle/ads/internal/model/AdPayload;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lms/c;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$$serializer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/model/AdPayload$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/vungle/ads/internal/model/AdPayload$$serializer;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/vungle/ads/internal/model/AdPayload$$serializer;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$$serializer;

    .line 7
    .line 8
    new-instance v1, Lvt/h2;

    .line 9
    .line 10
    const-string v2, "com.vungle.ads.internal.model.AdPayload"

    .line 11
    .line 12
    const/4 v3, 0x5

    .line 13
    invoke-direct {v1, v2, v0, v3}, Lvt/h2;-><init>(Ljava/lang/String;Lvt/m0;I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "ads"

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const-string v0, "config"

    .line 23
    .line 24
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    const-string v0, "mraidFiles"

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    const-string v0, "incentivizedTextSettings"

    .line 33
    .line 34
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    const-string v0, "assetsFullyDownloaded"

    .line 38
    .line 39
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    sput-object v1, Lcom/vungle/ads/internal/model/AdPayload$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 43
    .line 44
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
    .locals 10
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
    new-instance v0, Lvt/f;

    .line 2
    .line 3
    sget-object v1, Lcom/vungle/ads/internal/model/AdPayload$PlacementAdUnit$$serializer;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$PlacementAdUnit$$serializer;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lvt/f;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/vungle/ads/internal/model/ConfigPayload$$serializer;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$$serializer;

    .line 13
    .line 14
    invoke-static {v1}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lst/b;

    .line 19
    .line 20
    const-class v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    sget-object v4, Lvt/w2;->a:Lvt/w2;

    .line 27
    .line 28
    const/4 v5, 0x2

    .line 29
    new-array v6, v5, [Lkotlinx/serialization/KSerializer;

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    aput-object v4, v6, v7

    .line 33
    .line 34
    const/4 v8, 0x1

    .line 35
    aput-object v4, v6, v8

    .line 36
    .line 37
    const/4 v9, 0x0

    .line 38
    invoke-direct {v2, v3, v9, v6}, Lst/b;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;[Lkotlinx/serialization/KSerializer;)V

    .line 39
    .line 40
    .line 41
    new-instance v3, Lvt/a1;

    .line 42
    .line 43
    invoke-direct {v3, v4, v4}, Lvt/a1;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    .line 44
    .line 45
    .line 46
    const/4 v4, 0x5

    .line 47
    new-array v4, v4, [Lkotlinx/serialization/KSerializer;

    .line 48
    .line 49
    aput-object v0, v4, v7

    .line 50
    .line 51
    aput-object v1, v4, v8

    .line 52
    .line 53
    aput-object v2, v4, v5

    .line 54
    .line 55
    const/4 v0, 0x3

    .line 56
    aput-object v3, v4, v0

    .line 57
    .line 58
    sget-object v0, Lvt/i;->a:Lvt/i;

    .line 59
    .line 60
    const/4 v1, 0x4

    .line 61
    aput-object v0, v4, v1

    .line 62
    .line 63
    return-object v4
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/vungle/ads/internal/model/AdPayload;
    .locals 19
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
    invoke-virtual/range {p0 .. p0}, Lcom/vungle/ads/internal/model/AdPayload$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/c;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/encoding/c;->decodeSequentially()Z

    move-result v2

    const-class v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lvt/f;

    sget-object v10, Lcom/vungle/ads/internal/model/AdPayload$PlacementAdUnit$$serializer;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$PlacementAdUnit$$serializer;

    invoke-direct {v2, v10}, Lvt/f;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v1, v8, v2, v9}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v10, Lcom/vungle/ads/internal/model/ConfigPayload$$serializer;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$$serializer;

    invoke-interface {v0, v1, v7, v10, v9}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    new-instance v11, Lst/b;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    sget-object v12, Lvt/w2;->a:Lvt/w2;

    new-array v13, v6, [Lkotlinx/serialization/KSerializer;

    aput-object v12, v13, v8

    aput-object v12, v13, v7

    invoke-direct {v11, v3, v9, v13}, Lst/b;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;[Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v1, v6, v11, v9}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v6, Lvt/a1;

    invoke-direct {v6, v12, v12}, Lvt/a1;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v1, v4, v6, v9}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/c;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v5

    const/16 v6, 0x1f

    move v11, v5

    goto/16 :goto_4

    :cond_0
    move v15, v7

    move v12, v8

    move v13, v12

    move-object v2, v9

    move-object v10, v2

    move-object v11, v10

    move-object v14, v11

    :goto_0
    if-eqz v15, :cond_7

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v9

    const/4 v8, -0x1

    if-eq v9, v8, :cond_6

    if-eqz v9, :cond_5

    if-eq v9, v7, :cond_4

    if-eq v9, v6, :cond_3

    if-eq v9, v4, :cond_2

    if-ne v9, v5, :cond_1

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/c;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v12

    or-int/lit8 v13, v13, 0x10

    :goto_1
    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v9}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :cond_2
    new-instance v8, Lvt/a1;

    sget-object v9, Lvt/w2;->a:Lvt/w2;

    invoke-direct {v8, v9, v9}, Lvt/a1;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v1, v4, v8, v11}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    or-int/lit8 v13, v13, 0x8

    goto :goto_1

    :cond_3
    new-instance v8, Lst/b;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v4, v6, [Lkotlinx/serialization/KSerializer;

    sget-object v17, Lvt/w2;->a:Lvt/w2;

    const/16 v16, 0x0

    aput-object v17, v4, v16

    aput-object v17, v4, v7

    const/4 v7, 0x0

    invoke-direct {v8, v9, v7, v4}, Lst/b;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;[Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v1, v6, v8, v10}, Lkotlinx/serialization/encoding/c;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    or-int/2addr v13, v5

    move-object v9, v7

    const/4 v4, 0x3

    const/4 v7, 0x1

    :goto_3
    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    sget-object v4, Lcom/vungle/ads/internal/model/ConfigPayload$$serializer;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$$serializer;

    const/4 v8, 0x1

    invoke-interface {v0, v1, v8, v4, v14}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    or-int/2addr v13, v6

    move-object v9, v7

    move v7, v8

    const/4 v4, 0x3

    goto :goto_3

    :cond_5
    move v8, v7

    const/4 v7, 0x0

    new-instance v4, Lvt/f;

    sget-object v9, Lcom/vungle/ads/internal/model/AdPayload$PlacementAdUnit$$serializer;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$PlacementAdUnit$$serializer;

    invoke-direct {v4, v9}, Lvt/f;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v9, 0x0

    invoke-interface {v0, v1, v9, v4, v2}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    or-int/2addr v13, v8

    const/4 v4, 0x3

    move/from16 v18, v9

    move-object v9, v7

    move v7, v8

    move/from16 v8, v18

    goto :goto_0

    :cond_6
    move v8, v7

    const/4 v9, 0x0

    move v8, v9

    move v15, v8

    goto :goto_2

    :cond_7
    move-object v3, v10

    move-object v4, v11

    move v11, v12

    move v6, v13

    move-object v10, v14

    :goto_4
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/c;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lcom/vungle/ads/internal/model/AdPayload;

    move-object v7, v2

    check-cast v7, Ljava/util/List;

    move-object v8, v10

    check-cast v8, Lcom/vungle/ads/internal/model/ConfigPayload;

    move-object v9, v3

    check-cast v9, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v10, v4

    check-cast v10, Ljava/util/Map;

    const/4 v12, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/vungle/ads/internal/model/AdPayload;-><init>(ILjava/util/List;Lcom/vungle/ads/internal/model/ConfigPayload;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/Map;ZLvt/r2;)V

    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/model/AdPayload$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/vungle/ads/internal/model/AdPayload;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/model/AdPayload$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/vungle/ads/internal/model/AdPayload;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/internal/model/AdPayload;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/AdPayload$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/d;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/model/AdPayload;->write$Self(Lcom/vungle/ads/internal/model/AdPayload;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/d;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/vungle/ads/internal/model/AdPayload;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/AdPayload$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/vungle/ads/internal/model/AdPayload;)V

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
