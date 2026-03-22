.class final Landroidx/savedstate/serialization/EmptyArrayDecoder;
.super Lkotlinx/serialization/encoding/a;
.source "SavedStateDecoder.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/savedstate/serialization/EmptyArrayDecoder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final serializersModule:Lxt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/savedstate/serialization/EmptyArrayDecoder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/savedstate/serialization/EmptyArrayDecoder;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/savedstate/serialization/EmptyArrayDecoder;->INSTANCE:Landroidx/savedstate/serialization/EmptyArrayDecoder;

    .line 7
    .line 8
    invoke-static {}, Lxt/b;->a()Lxt/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Landroidx/savedstate/serialization/EmptyArrayDecoder;->serializersModule:Lxt/a;

    .line 13
    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/encoding/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    return p1
.end method

.method public getSerializersModule()Lxt/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/savedstate/serialization/EmptyArrayDecoder;->serializersModule:Lxt/a;

    .line 2
    .line 3
    return-object v0
.end method
