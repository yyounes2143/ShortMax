.class public final Ltf/h;
.super Lsf/a;
.source "DefaultSubsBonusPushTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltf/h$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final b:Ltf/h$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ltf/h$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ltf/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ltf/h;->b:Ltf/h$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsf/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Lcom/startshorts/androidplayer/bean/push/PushTime;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lsf/a;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    sget-object v0, Lud/a;->a:Lud/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lud/a;->t()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->a:Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->k()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_2
    invoke-virtual {p0}, Lsf/a;->e()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_3
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    invoke-virtual {p0, v0, v1}, Lsf/a;->d(J)Lcom/startshorts/androidplayer/bean/push/PushTime;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/push/PushTime;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 2
    .line 3
    new-instance v1, Ljava/util/Date;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Ljk/f;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/utils/TimeUtil;->f(Ljava/util/Date;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v9, Lcom/startshorts/androidplayer/bean/push/PushTime;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " 09:00:00"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0, v1}, Lsf/a;->h(Ljava/lang/String;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, " 23:59:59"

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lsf/a;->h(Ljava/lang/String;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    const-wide/16 v6, -0x1

    .line 61
    .line 62
    const/4 v8, 0x1

    .line 63
    move-object v1, v9

    .line 64
    invoke-direct/range {v1 .. v8}, Lcom/startshorts/androidplayer/bean/push/PushTime;-><init>(JJJI)V

    .line 65
    .line 66
    .line 67
    filled-new-array {v9}, [Lcom/startshorts/androidplayer/bean/push/PushTime;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method

.method public c()Lcom/startshorts/androidplayer/manager/push/task/PushType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushType;->SUBS_BONUS:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public priority()Lcom/startshorts/androidplayer/manager/push/task/PushPriority;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->SUBS_BONUS:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 2
    .line 3
    return-object v0
.end method
