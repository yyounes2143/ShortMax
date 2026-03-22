.class public final Ltj/b;
.super Ljava/lang/Object;
.source "PaymentBtnStubUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Ltj/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ltj/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ltj/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ltj/b;->a:Ltj/b;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroidx/databinding/ViewStubProxy;)Ltj/a;
    .locals 2
    .param p1    # Landroidx/databinding/ViewStubProxy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "stub"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->x1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->abTestValue()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_0
    const-string v1, "4"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_paymentbtn_def:I

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :pswitch_1
    const-string v1, "3"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_paymentbtn_3:I

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :pswitch_2
    const-string v1, "2"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_paymentbtn_2:I

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :pswitch_3
    const-string v1, "1"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    :goto_0
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_paymentbtn_def:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_paymentbtn_def:I

    .line 72
    .line 73
    :goto_1
    invoke-virtual {p1}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 80
    .line 81
    .line 82
    :cond_4
    invoke-virtual {p1}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const/4 v0, 0x0

    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    goto :goto_2

    .line 94
    :cond_5
    move-object p1, v0

    .line 95
    :goto_2
    instance-of v1, p1, Ltj/a;

    .line 96
    .line 97
    if-eqz v1, :cond_6

    .line 98
    .line 99
    check-cast p1, Ltj/a;

    .line 100
    .line 101
    return-object p1

    .line 102
    :cond_6
    return-object v0

    .line 103
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
