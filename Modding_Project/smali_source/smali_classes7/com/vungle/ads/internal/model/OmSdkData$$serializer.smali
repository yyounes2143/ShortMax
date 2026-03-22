.class public final Lcom/vungle/ads/internal/model/OmSdkData$$serializer;
.super Ljava/lang/Object;
.source "OmSdkData.kt"

# interfaces
.implements Lvt/m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/OmSdkData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvt/m0<",
        "Lcom/vungle/ads/internal/model/OmSdkData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lms/c;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/model/OmSdkData$$serializer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/model/OmSdkData$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/vungle/ads/internal/model/OmSdkData$$serializer;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/vungle/ads/internal/model/OmSdkData$$serializer;->INSTANCE:Lcom/vungle/ads/internal/model/OmSdkData$$serializer;

    .line 7
    .line 8
    new-instance v1, Lvt/h2;

    .line 9
    .line 10
    const-string v2, "com.vungle.ads.internal.model.OmSdkData"

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    invoke-direct {v1, v2, v0, v3}, Lvt/h2;-><init>(Ljava/lang/String;Lvt/m0;I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "params"

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const-string v0, "vendorKey"

    .line 23
    .line 24
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    const-string v0, "vendorURL"

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Lvt/h2;->o(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    sput-object v1, Lcom/vungle/ads/internal/model/OmSdkData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 33
    .line 34
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
    .locals 5
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
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v3, 0x3

    .line 16
    new-array v3, v3, [Lkotlinx/serialization/KSerializer;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    aput-object v1, v3, v4

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    aput-object v2, v3, v1

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    aput-object v0, v3, v1

    .line 26
    .line 27
    return-object v3
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/vungle/ads/internal/model/OmSdkData;
    .locals 11
    .param p1    # Lkotlinx/serialization/encoding/Decoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/OmSdkData$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/c;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/encoding/c;->decodeSequentially()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lvt/w2;->a:Lvt/w2;

    invoke-interface {p1, v0, v4, v1, v5}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v0, v3, v1, v5}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v0, v2, v1, v5}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x7

    move-object v6, v3

    move v3, v2

    goto :goto_1

    :cond_0
    move v8, v3

    move v1, v4

    move-object v6, v5

    move-object v7, v6

    :goto_0
    if-eqz v8, :cond_5

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/c;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    if-eqz v9, :cond_3

    if-eq v9, v3, :cond_2

    if-ne v9, v2, :cond_1

    sget-object v9, Lvt/w2;->a:Lvt/w2;

    invoke-interface {p1, v0, v2, v9, v7}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    or-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {p1, v9}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw p1

    :cond_2
    sget-object v9, Lvt/w2;->a:Lvt/w2;

    invoke-interface {p1, v0, v3, v9, v6}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    or-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_3
    sget-object v9, Lvt/w2;->a:Lvt/w2;

    invoke-interface {p1, v0, v4, v9, v5}, Lkotlinx/serialization/encoding/c;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v8, v4

    goto :goto_0

    :cond_5
    move v3, v1

    move-object v4, v5

    move-object v1, v7

    :goto_1
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/c;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance p1, Lcom/vungle/ads/internal/model/OmSdkData;

    check-cast v4, Ljava/lang/String;

    move-object v5, v6

    check-cast v5, Ljava/lang/String;

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/vungle/ads/internal/model/OmSdkData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvt/r2;)V

    return-object p1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/model/OmSdkData$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/vungle/ads/internal/model/OmSdkData;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/model/OmSdkData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/vungle/ads/internal/model/OmSdkData;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/internal/model/OmSdkData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/OmSdkData$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/d;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/model/OmSdkData;->write$Self(Lcom/vungle/ads/internal/model/OmSdkData;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/d;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/vungle/ads/internal/model/OmSdkData;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/OmSdkData$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/vungle/ads/internal/model/OmSdkData;)V

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
