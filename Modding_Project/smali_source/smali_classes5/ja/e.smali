.class public final synthetic Lja/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:Lja/f;

.field public final synthetic b:Lka/j;


# direct methods
.method public synthetic constructor <init>(Lja/f;Lka/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lja/e;->a:Lja/f;

    .line 5
    .line 6
    iput-object p2, p0, Lja/e;->b:Lka/j;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lja/e;->a:Lja/f;

    .line 2
    .line 3
    iget-object v1, p0, Lja/e;->b:Lka/j;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lja/f;->t(Lja/f;Lka/j;Ljava/lang/Exception;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
