.class public final Lcom/startshorts/androidplayer/bean/task/Task;
.super Ljava/lang/Object;
.source "Task.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/task/Task$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/task/Task$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TASK_ALERT_WINDOW_PERMISSION:I = 0x7

.field public static final TASK_EMAIL:I = 0x2

.field public static final TASK_FACEBOOK:I = 0x1

.field public static final TASK_FOLLOW_FACEBOOK:I = 0x8

.field public static final TASK_FOLLOW_INSTAGRAM:I = 0xb

.field public static final TASK_FOLLOW_TIKTOK:I = 0xa

.field public static final TASK_FOLLOW_YOUTUBE:I = 0x9

.field public static final TASK_GOOGLE:I = 0x5

.field public static final TASK_NOTIFICATION_PERMISSION:I = 0x4

.field public static final TASK_PHONE_NUMBER:I = 0x3

.field private static final followTaskList:[Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final showHotIcon:[Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private completeTaskTimes:I

.field private final icon:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final id:I

.field private receiveRewardsNum:I

.field private final taskBonus:I

.field private final taskName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private taskType:I

.field private taskUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/task/Task$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/task/Task$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/task/Task;->Companion:Lcom/startshorts/androidplayer/bean/task/Task$Companion;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/16 v2, 0x9

    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/startshorts/androidplayer/bean/task/Task;->showHotIcon:[Ljava/lang/Integer;

    .line 31
    .line 32
    const/16 v0, 0xa

    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/16 v3, 0xb

    .line 39
    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    filled-new-array {v1, v2, v0, v3}, [Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lcom/startshorts/androidplayer/bean/task/Task;->followTaskList:[Ljava/lang/Integer;

    .line 49
    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getFollowTaskList$cp()[Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/task/Task;->followTaskList:[Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getShowHotIcon$cp()[Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/task/Task;->showHotIcon:[Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final acceptable()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/task/Task;->completeTaskTimes:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget v2, p0, Lcom/startshorts/androidplayer/bean/task/Task;->receiveRewardsNum:I

    .line 8
    .line 9
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    :cond_1
    :goto_0
    return v1
.end method

.method public final available()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/task/Task;->completeTaskTimes:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget v2, p0, Lcom/startshorts/androidplayer/bean/task/Task;->receiveRewardsNum:I

    .line 8
    .line 9
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v1, 0x0

    .line 13
    :goto_0
    return v1
.end method

.method public final getCompleteTaskTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/task/Task;->completeTaskTimes:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFormatButton(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/startshorts/androidplayer/bean/task/Task;->completeTaskTimes:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget v0, Lcom/startshorts/androidplayer/R$string;->rewards_activity_go:I

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget v0, Lcom/startshorts/androidplayer/R$string;->rewards_activity_watch_ad_get:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-object p1
.end method

.method public final getFormatRemark(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/startshorts/androidplayer/R$string;->common_bonus:I

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const/16 v2, 0x2b

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lcom/startshorts/androidplayer/bean/task/Task;->taskBonus:I

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Ljk/v;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "getString(...)"

    .line 40
    .line 41
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object p1
.end method

.method public final getFormatRemarkNew()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x2b

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/task/Task;->taskBonus:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final getIcon()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/task/Task;->icon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/task/Task;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTaskBonus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/task/Task;->taskBonus:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTaskDefaultResIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/task/Task;->taskType:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->task_cions_icon:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_1
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_follow_instagram:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_2
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_follow_tiktok:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_follow_youtube:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_4
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_follow_facebook:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_5
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->task_alert_window_icon:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_6
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->task_google_icon:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_7
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->task_notification_icon:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_8
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->task_phone_icon:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_9
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->task_email_icon:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_a
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->task_facebook_icon:I

    .line 37
    .line 38
    :goto_0
    return v0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final getTaskName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/task/Task;->taskName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/task/Task;->taskType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTaskUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/task/Task;->taskUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isHotVisible()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/task/Task;->showHotIcon:[Ljava/lang/Integer;

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/bean/task/Task;->taskType:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/collections/n;->f0([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final setCompleteTaskTimes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/task/Task;->completeTaskTimes:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTaskType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/task/Task;->taskType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTaskUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/task/Task;->taskUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Task(id="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/task/Task;->id:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", taskType="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/startshorts/androidplayer/bean/task/Task;->taskType:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", taskName="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/task/Task;->taskName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", taskBonus="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/startshorts/androidplayer/bean/task/Task;->taskBonus:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", completeTaskTimes="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/startshorts/androidplayer/bean/task/Task;->completeTaskTimes:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", receiveRewardsNum="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/startshorts/androidplayer/bean/task/Task;->receiveRewardsNum:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, "), taskUrl="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/task/Task;->taskUrl:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    return-object v0
.end method
