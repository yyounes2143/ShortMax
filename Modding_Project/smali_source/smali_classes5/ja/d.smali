.class public final synthetic Lja/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCanceledListener;


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
    iput-object p1, p0, Lja/d;->a:Lja/f;

    .line 5
    .line 6
    iput-object p2, p0, Lja/d;->b:Lka/j;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .locals 2

    .line 1
    iget-object v0, p0, Lja/d;->a:Lja/f;

    .line 2
    .line 3
    iget-object v1, p0, Lja/d;->b:Lka/j;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lja/f;->s(Lja/f;Lka/j;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
