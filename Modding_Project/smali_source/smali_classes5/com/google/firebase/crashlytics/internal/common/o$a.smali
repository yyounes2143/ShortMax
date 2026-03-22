.class Lcom/google/firebase/crashlytics/internal/common/o$a;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/common/c0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/o;->y(Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;Lj8/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/crashlytics/internal/common/o;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/o$a;->a:Lcom/google/firebase/crashlytics/internal/common/o;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lj8/b;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lj8/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Thread;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/o$a;->a:Lcom/google/firebase/crashlytics/internal/common/o;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/common/o;->I(Lj8/b;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
