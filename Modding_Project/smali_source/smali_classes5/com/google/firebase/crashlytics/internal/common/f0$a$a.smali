.class Lcom/google/firebase/crashlytics/internal/common/f0$a$a;
.super Lcom/google/firebase/crashlytics/internal/common/d;
.source "ExecutorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/f0$a;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/google/firebase/crashlytics/internal/common/f0$a;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/f0$a;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/f0$a$a;->b:Lcom/google/firebase/crashlytics/internal/common/f0$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/f0$a$a;->a:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/d;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/f0$a$a;->a:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
