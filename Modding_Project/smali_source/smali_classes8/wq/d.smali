.class public final synthetic Lwq/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lhr/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lfr/a;


# direct methods
.method public synthetic constructor <init>(ILfr/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lwq/d;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lwq/d;->b:Lfr/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lwq/d;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lwq/d;->b:Lfr/a;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lwq/e;->h(ILfr/a;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
