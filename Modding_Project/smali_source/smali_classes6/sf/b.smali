.class public interface abstract Lsf/b;
.super Ljava/lang/Object;
.source "IPushTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsf/b$a;,
        Lsf/b$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lsf/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lsf/b$a;->a:Lsf/b$a;

    .line 2
    .line 3
    sput-object v0, Lsf/b;->a:Lsf/b$a;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract a()Lcom/startshorts/androidplayer/bean/push/PushTime;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract b()Ljava/util/List;
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
.end method

.method public abstract c()Lcom/startshorts/androidplayer/manager/push/task/PushType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract priority()Lcom/startshorts/androidplayer/manager/push/task/PushPriority;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
