.class public final Li5/i;
.super Ljava/lang/Object;
.source "SchedulingModule_WorkSchedulerFactory.java"

# interfaces
.implements Le5/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le5/b<",
        "Lj5/u;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lk5/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lm5/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lls/a;Lls/a;Lls/a;Lls/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Landroid/content/Context;",
            ">;",
            "Lls/a<",
            "Lk5/d;",
            ">;",
            "Lls/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;",
            ">;",
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
    iput-object p1, p0, Li5/i;->a:Lls/a;

    .line 5
    .line 6
    iput-object p2, p0, Li5/i;->b:Lls/a;

    .line 7
    .line 8
    iput-object p3, p0, Li5/i;->c:Lls/a;

    .line 9
    .line 10
    iput-object p4, p0, Li5/i;->d:Lls/a;

    .line 11
    .line 12
    return-void
.end method

.method public static a(Lls/a;Lls/a;Lls/a;Lls/a;)Li5/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Landroid/content/Context;",
            ">;",
            "Lls/a<",
            "Lk5/d;",
            ">;",
            "Lls/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;",
            ">;",
            "Lls/a<",
            "Lm5/a;",
            ">;)",
            "Li5/i;"
        }
    .end annotation

    .line 1
    new-instance v0, Li5/i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Li5/i;-><init>(Lls/a;Lls/a;Lls/a;Lls/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Landroid/content/Context;Lk5/d;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;Lm5/a;)Lj5/u;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Li5/h;->a(Landroid/content/Context;Lk5/d;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;Lm5/a;)Lj5/u;

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
    check-cast p0, Lj5/u;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public b()Lj5/u;
    .locals 4

    .line 1
    iget-object v0, p0, Li5/i;->a:Lls/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, p0, Li5/i;->b:Lls/a;

    .line 10
    .line 11
    invoke-interface {v1}, Lls/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lk5/d;

    .line 16
    .line 17
    iget-object v2, p0, Li5/i;->c:Lls/a;

    .line 18
    .line 19
    invoke-interface {v2}, Lls/a;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    .line 24
    .line 25
    iget-object v3, p0, Li5/i;->d:Lls/a;

    .line 26
    .line 27
    invoke-interface {v3}, Lls/a;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lm5/a;

    .line 32
    .line 33
    invoke-static {v0, v1, v2, v3}, Li5/i;->c(Landroid/content/Context;Lk5/d;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;Lm5/a;)Lj5/u;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li5/i;->b()Lj5/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
