.class public final Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment$mPropertyObserver$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "BonusRecordFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment$mPropertyObserver$1;->a:Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment$mPropertyObserver$1;->b(Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final b(Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->R()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment$mPropertyObserver$1;->a:Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "onPropertyChanged -> propertyId("

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x29

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->f(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    if-ne p2, p1, :cond_0

    .line 30
    .line 31
    sget-object p1, Lfk/h0;->a:Lfk/h0;

    .line 32
    .line 33
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment$mPropertyObserver$1;->a:Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;

    .line 34
    .line 35
    new-instance v0, Laj/j;

    .line 36
    .line 37
    invoke-direct {v0, p2}, Laj/j;-><init>(Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method
