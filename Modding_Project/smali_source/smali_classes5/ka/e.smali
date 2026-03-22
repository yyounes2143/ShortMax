.class public final synthetic Lka/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:Lka/i;

.field public final synthetic b:Lcom/hades/aar/auth/base/AuthType;

.field public final synthetic c:Lka/j;


# direct methods
.method public synthetic constructor <init>(Lka/i;Lcom/hades/aar/auth/base/AuthType;Lka/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lka/e;->a:Lka/i;

    .line 5
    .line 6
    iput-object p2, p0, Lka/e;->b:Lcom/hades/aar/auth/base/AuthType;

    .line 7
    .line 8
    iput-object p3, p0, Lka/e;->c:Lka/j;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lka/e;->a:Lka/i;

    .line 2
    .line 3
    iget-object v1, p0, Lka/e;->b:Lcom/hades/aar/auth/base/AuthType;

    .line 4
    .line 5
    iget-object v2, p0, Lka/e;->c:Lka/j;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lka/i;->m(Lka/i;Lcom/hades/aar/auth/base/AuthType;Lka/j;Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
