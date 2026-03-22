.class public final synthetic Lb6/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lh7/e;


# instance fields
.field public final synthetic a:Lb6/g;


# direct methods
.method public synthetic constructor <init>(Lb6/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb6/f;->a:Lb6/g;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lb6/f;->a:Lb6/g;

    .line 2
    .line 3
    check-cast p1, Lb6/o;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lb6/g;->l(Lb6/o;)Lb6/o;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
