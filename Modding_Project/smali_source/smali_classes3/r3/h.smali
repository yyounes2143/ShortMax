.class public final synthetic Lr3/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lf2/f;


# instance fields
.field public final synthetic a:Ly3/k;

.field public final synthetic b:Lr3/i;


# direct methods
.method public synthetic constructor <init>(Ly3/k;Lr3/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr3/h;->a:Ly3/k;

    .line 5
    .line 6
    iput-object p2, p0, Lr3/h;->b:Lr3/i;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr3/h;->a:Ly3/k;

    .line 2
    .line 3
    iget-object v1, p0, Lr3/h;->b:Lr3/i;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lr3/i;->a(Ly3/k;Lr3/i;Ljava/io/OutputStream;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
