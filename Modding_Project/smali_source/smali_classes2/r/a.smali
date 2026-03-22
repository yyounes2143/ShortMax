.class public final synthetic Lr/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

.field public final synthetic b:Landroidx/fragment/app/strictmode/Violation;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr/a;->a:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    .line 5
    .line 6
    iput-object p2, p0, Lr/a;->b:Landroidx/fragment/app/strictmode/Violation;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lr/a;->a:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    .line 2
    .line 3
    iget-object v1, p0, Lr/a;->b:Landroidx/fragment/app/strictmode/Violation;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
