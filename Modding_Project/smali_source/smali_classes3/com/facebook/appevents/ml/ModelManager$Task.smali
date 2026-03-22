.class public final enum Lcom/facebook/appevents/ml/ModelManager$Task;
.super Ljava/lang/Enum;
.source "ModelManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/ml/ModelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/ml/ModelManager$Task$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/appevents/ml/ModelManager$Task;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/appevents/ml/ModelManager$Task;

.field public static final enum MTML_APP_EVENT_PREDICTION:Lcom/facebook/appevents/ml/ModelManager$Task;

.field public static final enum MTML_INTEGRITY_DETECT:Lcom/facebook/appevents/ml/ModelManager$Task;


# direct methods
.method private static final synthetic $values()[Lcom/facebook/appevents/ml/ModelManager$Task;
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager$Task;->MTML_INTEGRITY_DETECT:Lcom/facebook/appevents/ml/ModelManager$Task;

    .line 2
    .line 3
    sget-object v1, Lcom/facebook/appevents/ml/ModelManager$Task;->MTML_APP_EVENT_PREDICTION:Lcom/facebook/appevents/ml/ModelManager$Task;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lcom/facebook/appevents/ml/ModelManager$Task;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/appevents/ml/ModelManager$Task;

    .line 2
    .line 3
    const-string v1, "MTML_INTEGRITY_DETECT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/ml/ModelManager$Task;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/facebook/appevents/ml/ModelManager$Task;->MTML_INTEGRITY_DETECT:Lcom/facebook/appevents/ml/ModelManager$Task;

    .line 10
    .line 11
    new-instance v0, Lcom/facebook/appevents/ml/ModelManager$Task;

    .line 12
    .line 13
    const-string v1, "MTML_APP_EVENT_PREDICTION"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/ml/ModelManager$Task;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/facebook/appevents/ml/ModelManager$Task;->MTML_APP_EVENT_PREDICTION:Lcom/facebook/appevents/ml/ModelManager$Task;

    .line 20
    .line 21
    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager$Task;->$values()[Lcom/facebook/appevents/ml/ModelManager$Task;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/facebook/appevents/ml/ModelManager$Task;->$VALUES:[Lcom/facebook/appevents/ml/ModelManager$Task;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/appevents/ml/ModelManager$Task;
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/appevents/ml/ModelManager$Task;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/facebook/appevents/ml/ModelManager$Task;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/facebook/appevents/ml/ModelManager$Task;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager$Task;->$VALUES:[Lcom/facebook/appevents/ml/ModelManager$Task;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/facebook/appevents/ml/ModelManager$Task;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toKey()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager$Task$a;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const-string v0, "app_event_pred"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 19
    .line 20
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_1
    const-string v0, "integrity_detect"

    .line 25
    .line 26
    :goto_0
    return-object v0
.end method

.method public final toUseCase()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager$Task$a;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const-string v0, "MTML_APP_EVENT_PRED"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 19
    .line 20
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_1
    const-string v0, "MTML_INTEGRITY_DETECT"

    .line 25
    .line 26
    :goto_0
    return-object v0
.end method
