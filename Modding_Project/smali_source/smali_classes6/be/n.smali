.class public final synthetic Lbe/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbe/n;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbe/n;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/manager/account/AccountMergeManager;->d(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/DialogInterface;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
