.class public final Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "ProfileLoginButton.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton$a;,
        Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final f:Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton;->f:Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final v()V
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "ms"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    const/high16 v2, 0x41300000    # 11.0f

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/high16 v2, 0x41100000    # 9.0f

    .line 34
    .line 35
    invoke-static {v1, v2}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v3, v2}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton;->d:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton$c;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton$c;-><init>(Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton$d;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton$d;-><init>(Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    return-void
.end method

.method private final w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton;->e:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton$e;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton$e;-><init>(Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_profile_sign_in:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMListener()Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getSTag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ProfileLoginButton"

    .line 2
    .line 3
    return-object v0
.end method

.method public final release()V
    .locals 0

    .line 1
    return-void
.end method

.method public final setMListener(Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/startshorts/androidplayer/R$id;->login_button:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 15
    .line 16
    sget p1, Lcom/startshorts/androidplayer/R$id;->ll_login_button:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/LinearLayout;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton;->d:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    sget p1, Lcom/startshorts/androidplayer/R$id;->reward_iv:I

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/widget/ImageView;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton;->e:Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton;->v()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton;->w()V

    .line 40
    .line 41
    .line 42
    return-void
.end method
