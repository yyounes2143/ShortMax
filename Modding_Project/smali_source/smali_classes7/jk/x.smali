.class public final synthetic Ljk/x;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:I

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;FFILkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljk/x;->a:Landroid/widget/TextView;

    .line 5
    .line 6
    iput p2, p0, Ljk/x;->b:F

    .line 7
    .line 8
    iput p3, p0, Ljk/x;->c:F

    .line 9
    .line 10
    iput p4, p0, Ljk/x;->d:I

    .line 11
    .line 12
    iput-object p5, p0, Ljk/x;->e:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Ljk/x;->a:Landroid/widget/TextView;

    .line 2
    .line 3
    iget v1, p0, Ljk/x;->b:F

    .line 4
    .line 5
    iget v2, p0, Ljk/x;->c:F

    .line 6
    .line 7
    iget v3, p0, Ljk/x;->d:I

    .line 8
    .line 9
    iget-object v4, p0, Ljk/x;->e:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Ljk/y;->a(Landroid/widget/TextView;FFILkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
