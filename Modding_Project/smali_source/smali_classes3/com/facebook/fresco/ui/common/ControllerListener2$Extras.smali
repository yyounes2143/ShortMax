.class public final Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
.super Ljava/lang/Object;
.source "ControllerListener2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/ui/common/ControllerListener2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Extras"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public callerContext:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public componentExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public datasourceExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public focusX:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public focusY:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public imageExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public imageSourceExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public logWithHighSamplingRate:Z

.field public mainUri:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public modifiedUriStatus:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public originalUri:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public scaleType:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public shortcutExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public uiFramework:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewportHeight:I

.field public viewportWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->Companion:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->viewportWidth:I

    .line 6
    .line 7
    iput v0, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->viewportHeight:I

    .line 8
    .line 9
    return-void
.end method

.method public static final of(Ljava/util/Map;)Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->Companion:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;->of(Ljava/util/Map;)Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public final makeExtrasCopy()Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->Companion:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->componentExtras:Ljava/util/Map;

    .line 9
    .line 10
    invoke-static {v1, v2}, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;->access$copyMap(Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;Ljava/util/Map;)Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iput-object v2, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->componentExtras:Ljava/util/Map;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->shortcutExtras:Ljava/util/Map;

    .line 17
    .line 18
    invoke-static {v1, v2}, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;->access$copyMap(Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;Ljava/util/Map;)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->shortcutExtras:Ljava/util/Map;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->datasourceExtras:Ljava/util/Map;

    .line 25
    .line 26
    invoke-static {v1, v2}, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;->access$copyMap(Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;Ljava/util/Map;)Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iput-object v2, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->datasourceExtras:Ljava/util/Map;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->imageExtras:Ljava/util/Map;

    .line 33
    .line 34
    invoke-static {v1, v2}, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;->access$copyMap(Lcom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion;Ljava/util/Map;)Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->imageExtras:Ljava/util/Map;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->callerContext:Ljava/lang/Object;

    .line 41
    .line 42
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->callerContext:Ljava/lang/Object;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->mainUri:Landroid/net/Uri;

    .line 45
    .line 46
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->mainUri:Landroid/net/Uri;

    .line 47
    .line 48
    iget v1, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->viewportWidth:I

    .line 49
    .line 50
    iput v1, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->viewportWidth:I

    .line 51
    .line 52
    iget v1, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->viewportHeight:I

    .line 53
    .line 54
    iput v1, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->viewportHeight:I

    .line 55
    .line 56
    iget-object v1, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->scaleType:Ljava/lang/Object;

    .line 57
    .line 58
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->scaleType:Ljava/lang/Object;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->focusX:Ljava/lang/Float;

    .line 61
    .line 62
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->focusX:Ljava/lang/Float;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->focusY:Ljava/lang/Float;

    .line 65
    .line 66
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->focusY:Ljava/lang/Float;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->uiFramework:Ljava/lang/String;

    .line 69
    .line 70
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->uiFramework:Ljava/lang/String;

    .line 71
    .line 72
    return-object v0
.end method
