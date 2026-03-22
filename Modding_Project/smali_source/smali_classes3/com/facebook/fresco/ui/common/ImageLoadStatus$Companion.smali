.class public final Lcom/facebook/fresco/ui/common/ImageLoadStatus$Companion;
.super Ljava/lang/Object;
.source "ImageLoadStatus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/ui/common/ImageLoadStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImageLoadStatus.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageLoadStatus.kt\ncom/facebook/fresco/ui/common/ImageLoadStatus$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,40:1\n1310#2,2:41\n*S KotlinDebug\n*F\n+ 1 ImageLoadStatus.kt\ncom/facebook/fresco/ui/common/ImageLoadStatus$Companion\n*L\n37#1:41,2\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/ui/common/ImageLoadStatus$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromInt(I)Lcom/facebook/fresco/ui/common/ImageLoadStatus;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->access$getVALUES$cp()[Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ne v4, p1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v3, 0x0

    .line 22
    :goto_1
    return-object v3
.end method
