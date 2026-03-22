.class public final synthetic Lb/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb/c;->a:Landroid/widget/TextView;

    .line 5
    .line 6
    iput-object p2, p0, Lb/c;->b:Lkotlin/jvm/internal/Ref$IntRef;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/c;->a:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lb/c;->b:Lkotlin/jvm/internal/Ref$IntRef;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lad-manager/a/e;->j(Landroid/widget/TextView;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
