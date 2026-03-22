.class public final synthetic Lu7/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lu7/i;

.field public final synthetic b:Lu7/a;


# direct methods
.method public synthetic constructor <init>(Lu7/i;Lu7/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu7/f;->a:Lu7/i;

    .line 5
    .line 6
    iput-object p2, p0, Lu7/f;->b:Lu7/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lu7/f;->a:Lu7/i;

    .line 2
    .line 3
    iget-object v1, p0, Lu7/f;->b:Lu7/a;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lu7/i;->c(Lu7/i;Lu7/a;)Lq7/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
