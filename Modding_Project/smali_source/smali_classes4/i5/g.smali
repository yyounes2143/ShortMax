.class public final Li5/g;
.super Ljava/lang/Object;
.source "SchedulingConfigModule_ConfigFactory.java"

# interfaces
.implements Le5/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le5/b<",
        "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lm5/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lls/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Lm5/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li5/g;->a:Lls/a;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lm5/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;
    .locals 0

    .line 1
    invoke-static {p0}, Li5/f;->a(Lm5/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Le5/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    .line 10
    .line 11
    return-object p0
.end method

.method public static b(Lls/a;)Li5/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Lm5/a;",
            ">;)",
            "Li5/g;"
        }
    .end annotation

    .line 1
    new-instance v0, Li5/g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Li5/g;-><init>(Lls/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public c()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Li5/g;->a:Lls/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lm5/a;

    .line 8
    .line 9
    invoke-static {v0}, Li5/g;->a(Lm5/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li5/g;->c()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
