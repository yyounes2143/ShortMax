.class public final synthetic Lan/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcn/k;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcn/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lan/c;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lan/c;->b:Lcn/k;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lan/c;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lan/c;->b:Lcn/k;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lan/d;->a(Landroid/content/Context;Lcn/k;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
