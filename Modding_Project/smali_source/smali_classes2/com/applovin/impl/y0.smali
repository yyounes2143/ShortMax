.class public Lcom/applovin/impl/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/sdk/k;

.field private final b:I

.field private c:Ljava/util/List;

.field private d:Ljava/lang/String;

.field private e:Lcom/applovin/impl/u0;

.field private f:Lcom/applovin/impl/t0$c;

.field private g:Lcom/applovin/impl/u0;

.field private h:Landroid/app/Dialog;

.field private i:Lcom/applovin/impl/t0$b;

.field private final j:Lcom/applovin/impl/b;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/applovin/impl/t0$b;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/applovin/impl/t0$b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/applovin/impl/y0;->i:Lcom/applovin/impl/t0$b;

    .line 10
    .line 11
    new-instance v0, Lcom/applovin/impl/y0$a;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/applovin/impl/y0$a;-><init>(Lcom/applovin/impl/y0;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/applovin/impl/y0;->j:Lcom/applovin/impl/b;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    .line 19
    .line 20
    sget-object v0, Lcom/applovin/impl/v4;->N6:Lcom/applovin/impl/v4;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lcom/applovin/impl/y0;->b:I

    .line 33
    .line 34
    return-void
.end method

.method private a(Landroid/app/Dialog;)Landroid/app/Activity;
    .locals 1

    .line 132
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 133
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 134
    check-cast p1, Landroid/app/Activity;

    return-object p1

    .line 135
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 136
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 137
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 138
    check-cast p1, Landroid/app/Activity;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/y0;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/applovin/impl/y0;->h:Landroid/app/Dialog;

    return-object p1
.end method

.method private a(I)Lcom/applovin/impl/u0;
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/applovin/impl/y0;->c:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 130
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/u0;

    .line 131
    invoke-virtual {v2}, Lcom/applovin/impl/u0;->b()I

    move-result v3

    if-ne p1, v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method static synthetic a(Lcom/applovin/impl/y0;)Lcom/applovin/impl/u0;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/applovin/impl/y0;->g:Lcom/applovin/impl/u0;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/y0;I)Lcom/applovin/impl/u0;
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/applovin/impl/y0;->a(I)Lcom/applovin/impl/u0;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/y0;Lcom/applovin/impl/u0;)Lcom/applovin/impl/u0;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/applovin/impl/y0;->g:Lcom/applovin/impl/u0;

    return-object p1
.end method

.method private synthetic a(Landroid/app/AlertDialog;Landroid/app/Activity;Landroid/content/DialogInterface;)V
    .locals 2

    .line 113
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 114
    const-string v0, "android:id/alertTitle"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 115
    invoke-virtual {p1, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 116
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 117
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 118
    iget p3, p0, Lcom/applovin/impl/y0;->b:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p3, 0x30

    .line 119
    invoke-static {p2, p3}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMinHeight(I)V

    return-void
.end method

.method private a(Lcom/applovin/impl/u0;)V
    .locals 3

    .line 120
    new-instance v0, Lcom/applovin/impl/y0$h;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/y0$h;-><init>(Lcom/applovin/impl/y0;Lcom/applovin/impl/u0;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 121
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 122
    invoke-static {v0, v1, v2}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/u0;Landroid/app/Activity;)V
    .locals 8

    if-nez p1, :cond_0

    .line 29
    const-string p1, "Consent flow state is null"

    invoke-direct {p0, p1}, Lcom/applovin/impl/y0;->a(Ljava/lang/String;)V

    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transitioning to state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConsentFlowStateMachine"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/applovin/impl/u0;->c()Lcom/applovin/impl/u0$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/u0$b;->a:Lcom/applovin/impl/u0$b;

    const-string v2, "cf_start"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_9

    .line 32
    invoke-static {p2}, Lcom/applovin/impl/d;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    invoke-direct {p0, p1}, Lcom/applovin/impl/y0;->a(Lcom/applovin/impl/u0;)V

    return-void

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->G()Lcom/applovin/impl/sdk/EventServiceImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;)V

    .line 35
    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/v0;

    .line 36
    iput-object v0, p0, Lcom/applovin/impl/y0;->g:Lcom/applovin/impl/u0;

    .line 37
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 39
    invoke-virtual {v0}, Lcom/applovin/impl/v0;->d()Ljava/util/List;

    move-result-object v2

    .line 40
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/impl/w0;

    .line 41
    new-instance v5, Lcom/applovin/impl/y0$b;

    invoke-direct {v5, p0, v3, p1, p2}, Lcom/applovin/impl/y0$b;-><init>(Lcom/applovin/impl/y0;Lcom/applovin/impl/w0;Lcom/applovin/impl/u0;Landroid/app/Activity;)V

    .line 42
    invoke-virtual {v3}, Lcom/applovin/impl/w0;->c()Lcom/applovin/impl/w0$a;

    move-result-object v6

    sget-object v7, Lcom/applovin/impl/w0$a;->b:Lcom/applovin/impl/w0$a;

    if-ne v6, v7, :cond_3

    .line 43
    invoke-virtual {v3}, Lcom/applovin/impl/w0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {v3}, Lcom/applovin/impl/w0;->c()Lcom/applovin/impl/w0$a;

    move-result-object v6

    sget-object v7, Lcom/applovin/impl/w0$a;->c:Lcom/applovin/impl/w0$a;

    if-ne v6, v7, :cond_4

    .line 45
    invoke-virtual {v3}, Lcom/applovin/impl/w0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 46
    :cond_4
    invoke-virtual {v3}, Lcom/applovin/impl/w0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 47
    :cond_5
    invoke-virtual {v0}, Lcom/applovin/impl/v0;->f()Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 49
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 50
    sget v3, Lcom/applovin/sdk/R$string;->applovin_terms_of_service_text:I

    invoke-static {v3}, Lcom/applovin/impl/sdk/k;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    sget v5, Lcom/applovin/sdk/R$string;->applovin_privacy_policy_text:I

    invoke-static {v5}, Lcom/applovin/impl/sdk/k;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 52
    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 53
    invoke-static {p1, v6}, Lcom/applovin/impl/sdk/utils/StringUtils;->containsAtLeastOneSubstring(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 54
    iget-object p1, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->y()Lcom/applovin/impl/t0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/t0;->h()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 55
    new-instance v6, Lcom/applovin/impl/y0$c;

    invoke-direct {v6, p0, p1, p2}, Lcom/applovin/impl/y0$c;-><init>(Lcom/applovin/impl/y0;Landroid/net/Uri;Landroid/app/Activity;)V

    .line 56
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 57
    invoke-static {v2, p1, v6, v4}, Lcom/applovin/impl/sdk/utils/StringUtils;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Landroid/text/style/ClickableSpan;Z)V

    .line 58
    :cond_6
    iget-object p1, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->y()Lcom/applovin/impl/t0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/t0;->f()Landroid/net/Uri;

    move-result-object p1

    .line 59
    new-instance v3, Lcom/applovin/impl/y0$d;

    invoke-direct {v3, p0, p1, p2}, Lcom/applovin/impl/y0$d;-><init>(Lcom/applovin/impl/y0;Landroid/net/Uri;Landroid/app/Activity;)V

    .line 60
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 61
    invoke-static {v2, p1, v3, v4}, Lcom/applovin/impl/sdk/utils/StringUtils;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Landroid/text/style/ClickableSpan;Z)V

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    .line 62
    :cond_8
    :goto_1
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 63
    invoke-virtual {v0}, Lcom/applovin/impl/v0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 65
    new-instance v0, Lcom/applovin/impl/ag;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/ag;-><init>(Lcom/applovin/impl/y0;Landroid/app/AlertDialog;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 66
    iput-object p1, p0, Lcom/applovin/impl/y0;->h:Landroid/app/Dialog;

    .line 67
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 68
    iget-object p1, p0, Lcom/applovin/impl/y0;->i:Lcom/applovin/impl/t0$b;

    invoke-virtual {p1}, Lcom/applovin/impl/t0$b;->d()V

    goto/16 :goto_2

    .line 69
    :cond_9
    invoke-virtual {p1}, Lcom/applovin/impl/u0;->c()Lcom/applovin/impl/u0$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/u0$b;->b:Lcom/applovin/impl/u0$b;

    if-ne v0, v1, :cond_c

    .line 70
    iget-object v0, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->y()Lcom/applovin/impl/t0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/t0;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->y()Lcom/applovin/impl/t0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/t0;->m()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 71
    invoke-static {p2}, Lcom/applovin/impl/d;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 72
    invoke-direct {p0, p1}, Lcom/applovin/impl/y0;->a(Lcom/applovin/impl/u0;)V

    return-void

    .line 73
    :cond_a
    iget-object v0, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->t()Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/y0$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/impl/y0$e;-><init>(Lcom/applovin/impl/y0;Lcom/applovin/impl/u0;Landroid/app/Activity;)V

    invoke-virtual {v0, p2, v1}, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;->loadCmp(Landroid/app/Activity;Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$e;)V

    goto/16 :goto_2

    .line 74
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/y0;->a(Lcom/applovin/impl/u0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    goto/16 :goto_2

    .line 75
    :cond_c
    invoke-virtual {p1}, Lcom/applovin/impl/u0;->c()Lcom/applovin/impl/u0$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/u0$b;->c:Lcom/applovin/impl/u0$b;

    if-ne v0, v1, :cond_e

    .line 76
    check-cast p1, Lcom/applovin/impl/x0;

    .line 77
    invoke-virtual {p1}, Lcom/applovin/impl/x0;->e()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/applovin/impl/x0;->d()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_d

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 80
    :cond_d
    const-string v2, "flow_type"

    const-string/jumbo v3, "unified"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v2, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->G()Lcom/applovin/impl/sdk/EventServiceImpl;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/y0;->b(Lcom/applovin/impl/u0;Landroid/app/Activity;)V

    goto/16 :goto_2

    .line 83
    :cond_e
    invoke-virtual {p1}, Lcom/applovin/impl/u0;->c()Lcom/applovin/impl/u0$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/u0$b;->e:Lcom/applovin/impl/u0$b;

    if-ne v0, v1, :cond_11

    .line 84
    invoke-static {p2}, Lcom/applovin/impl/d;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 85
    invoke-direct {p0, p1}, Lcom/applovin/impl/y0;->a(Lcom/applovin/impl/u0;)V

    return-void

    .line 86
    :cond_f
    iget-object v0, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->y()Lcom/applovin/impl/t0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/t0;->m()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 87
    iget-object v0, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->t()Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;->preloadCmp(Landroid/app/Activity;)V

    .line 88
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/y0;->a(Lcom/applovin/impl/u0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    goto/16 :goto_2

    .line 89
    :cond_10
    iget-object v0, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->t()Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/y0$f;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/impl/y0$f;-><init>(Lcom/applovin/impl/y0;Lcom/applovin/impl/u0;Landroid/app/Activity;)V

    invoke-virtual {v0, p2, v1}, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;->loadCmp(Landroid/app/Activity;Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$e;)V

    goto/16 :goto_2

    .line 90
    :cond_11
    invoke-virtual {p1}, Lcom/applovin/impl/u0;->c()Lcom/applovin/impl/u0$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/u0$b;->f:Lcom/applovin/impl/u0$b;

    if-ne v0, v1, :cond_14

    .line 91
    invoke-static {p2}, Lcom/applovin/impl/d;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 92
    invoke-direct {p0, p1}, Lcom/applovin/impl/y0;->a(Lcom/applovin/impl/u0;)V

    return-void

    .line 93
    :cond_12
    iget-object v0, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->y()Lcom/applovin/impl/t0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/t0;->m()Z

    move-result v0

    if-nez v0, :cond_13

    .line 94
    iget-object v0, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->G()Lcom/applovin/impl/sdk/EventServiceImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;)V

    .line 95
    :cond_13
    iget-object v0, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->t()Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/y0$g;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/impl/y0$g;-><init>(Lcom/applovin/impl/y0;Lcom/applovin/impl/u0;Landroid/app/Activity;)V

    invoke-virtual {v0, p2, v1}, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;->showCmp(Landroid/app/Activity;Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$f;)V

    goto/16 :goto_2

    .line 96
    :cond_14
    invoke-virtual {p1}, Lcom/applovin/impl/u0;->c()Lcom/applovin/impl/u0$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/u0$b;->g:Lcom/applovin/impl/u0$b;

    if-ne v0, v1, :cond_1b

    .line 97
    invoke-virtual {p1}, Lcom/applovin/impl/u0;->a()Lcom/applovin/impl/u0$a;

    move-result-object v0

    .line 98
    sget-object v1, Lcom/applovin/impl/u0$a;->c:Lcom/applovin/impl/u0$a;

    if-ne v0, v1, :cond_15

    .line 99
    iget-object v0, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->y()Lcom/applovin/impl/t0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/t0;->k()Z

    move-result v0

    .line 100
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/y0;->a(Lcom/applovin/impl/u0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    goto/16 :goto_2

    .line 101
    :cond_15
    sget-object v1, Lcom/applovin/impl/u0$a;->d:Lcom/applovin/impl/u0$a;

    if-ne v0, v1, :cond_18

    .line 102
    iget-object v0, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->A0()Z

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    sget-object v2, Lcom/applovin/impl/x4;->s:Lcom/applovin/impl/x4;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v5}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/x4;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v0, :cond_16

    .line 104
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    move v3, v4

    .line 105
    :cond_17
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/y0;->a(Lcom/applovin/impl/u0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    goto :goto_2

    .line 106
    :cond_18
    sget-object v1, Lcom/applovin/impl/u0$a;->e:Lcom/applovin/impl/u0$a;

    if-ne v0, v1, :cond_1a

    .line 107
    iget-object v0, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->y()Lcom/applovin/impl/t0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/t0;->h()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_19

    move v3, v4

    .line 108
    :cond_19
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/y0;->a(Lcom/applovin/impl/u0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    goto :goto_2

    .line 109
    :cond_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid consent flow decision type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/y0;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 110
    :cond_1b
    invoke-virtual {p1}, Lcom/applovin/impl/u0;->c()Lcom/applovin/impl/u0$b;

    move-result-object p2

    sget-object v0, Lcom/applovin/impl/u0$b;->d:Lcom/applovin/impl/u0$b;

    if-ne p2, v0, :cond_1c

    .line 111
    invoke-direct {p0}, Lcom/applovin/impl/y0;->b()V

    goto :goto_2

    .line 112
    :cond_1c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid consent flow destination state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/y0;->a(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private a(Lcom/applovin/impl/u0;Landroid/app/Activity;Ljava/lang/Boolean;)V
    .locals 0

    .line 25
    invoke-virtual {p1, p3}, Lcom/applovin/impl/u0;->a(Ljava/lang/Boolean;)I

    move-result p3

    invoke-direct {p0, p3}, Lcom/applovin/impl/y0;->a(I)Lcom/applovin/impl/u0;

    move-result-object p3

    .line 26
    invoke-direct {p0, p1, p3, p2}, Lcom/applovin/impl/y0;->a(Lcom/applovin/impl/u0;Lcom/applovin/impl/u0;Landroid/app/Activity;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/u0;Lcom/applovin/impl/u0;Landroid/app/Activity;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/applovin/impl/y0;->e:Lcom/applovin/impl/u0;

    .line 28
    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/y0;->c(Lcom/applovin/impl/u0;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/y0;Landroid/app/AlertDialog;Landroid/app/Activity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/y0;->a(Landroid/app/AlertDialog;Landroid/app/Activity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/y0;Lcom/applovin/impl/u0;Landroid/app/Activity;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/y0;->b(Lcom/applovin/impl/u0;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/y0;Lcom/applovin/impl/u0;Landroid/app/Activity;Ljava/lang/Boolean;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/y0;->a(Lcom/applovin/impl/u0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/y0;Lcom/applovin/impl/u0;Lcom/applovin/impl/u0;Landroid/app/Activity;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/y0;->a(Lcom/applovin/impl/u0;Lcom/applovin/impl/u0;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/y0;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/applovin/impl/y0;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 123
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/applovin/impl/k1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Last started states: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/y0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nLast successful state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/y0;->e:Lcom/applovin/impl/u0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "details"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/c2;->B0:Lcom/applovin/impl/c2;

    invoke-virtual {v1, v2, p1, v0}, Lcom/applovin/impl/d2;->a(Lcom/applovin/impl/c2;Ljava/lang/String;Ljava/util/Map;)V

    .line 126
    iget-object v0, p0, Lcom/applovin/impl/y0;->i:Lcom/applovin/impl/t0$b;

    if-eqz v0, :cond_0

    .line 127
    new-instance v1, Lcom/applovin/impl/s0;

    sget v2, Lcom/applovin/impl/s0;->e:I

    invoke-direct {v1, v2, p1}, Lcom/applovin/impl/s0;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/t0$b;->a(Lcom/applovin/impl/s0;)V

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/applovin/impl/y0;->b()V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/y0;Landroid/app/Dialog;)Landroid/app/Activity;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/applovin/impl/y0;->a(Landroid/app/Dialog;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/y0;)Landroid/app/Dialog;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/applovin/impl/y0;->h:Landroid/app/Dialog;

    return-object p0
.end method

.method private b()V
    .locals 3

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/applovin/impl/y0;->c:Ljava/util/List;

    .line 6
    iput-object v0, p0, Lcom/applovin/impl/y0;->e:Lcom/applovin/impl/u0;

    .line 7
    iget-object v1, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->e()Lcom/applovin/impl/c;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/y0;->j:Lcom/applovin/impl/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/c;->b(Lcom/applovin/impl/b;)V

    .line 8
    iget-object v1, p0, Lcom/applovin/impl/y0;->f:Lcom/applovin/impl/t0$c;

    if-eqz v1, :cond_0

    .line 9
    iget-object v2, p0, Lcom/applovin/impl/y0;->i:Lcom/applovin/impl/t0$b;

    invoke-interface {v1, v2}, Lcom/applovin/impl/t0$c;->a(Lcom/applovin/impl/t0$b;)V

    .line 10
    iput-object v0, p0, Lcom/applovin/impl/y0;->f:Lcom/applovin/impl/t0$c;

    .line 11
    :cond_0
    new-instance v0, Lcom/applovin/impl/t0$b;

    invoke-direct {v0}, Lcom/applovin/impl/t0$b;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/y0;->i:Lcom/applovin/impl/t0$b;

    return-void
.end method

.method private b(Lcom/applovin/impl/u0;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/y0;->a(Lcom/applovin/impl/u0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b(Lcom/applovin/impl/y0;Lcom/applovin/impl/u0;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/y0;->a(Lcom/applovin/impl/u0;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/y0;)Lcom/applovin/impl/u0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/y0;->e:Lcom/applovin/impl/u0;

    return-object p0
.end method

.method private c(Lcom/applovin/impl/u0;Landroid/app/Activity;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/applovin/impl/zf;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/zf;-><init>(Lcom/applovin/impl/y0;Lcom/applovin/impl/u0;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/y0;)Lcom/applovin/impl/sdk/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/y0;)Lcom/applovin/impl/t0$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/y0;->i:Lcom/applovin/impl/t0$b;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(ILandroid/app/Activity;Lcom/applovin/impl/t0$c;)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/applovin/impl/y0;->c:Ljava/util/List;

    const-string v1, "ConsentFlowStateMachine"

    if-eqz v0, :cond_2

    .line 12
    iget-object p1, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to start states: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/applovin/impl/y0;->c:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Consent flow already in progress for states: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/applovin/impl/y0;->c:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_1
    new-instance p1, Lcom/applovin/impl/s0;

    sget p2, Lcom/applovin/impl/s0;->d:I

    const-string v0, "Consent flow is already in progress."

    invoke-direct {p1, p2, v0}, Lcom/applovin/impl/s0;-><init>(ILjava/lang/String;)V

    .line 15
    new-instance p2, Lcom/applovin/impl/t0$b;

    invoke-direct {p2, p1}, Lcom/applovin/impl/t0$b;-><init>(Lcom/applovin/impl/s0;)V

    .line 16
    invoke-interface {p3, p2}, Lcom/applovin/impl/t0$c;->a(Lcom/applovin/impl/t0$b;)V

    return-void

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-static {v0}, Lcom/applovin/impl/z0;->a(Lcom/applovin/impl/sdk/k;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/y0;->c:Ljava/util/List;

    .line 18
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/y0;->d:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/applovin/impl/y0;->f:Lcom/applovin/impl/t0$c;

    .line 20
    invoke-direct {p0, p1}, Lcom/applovin/impl/y0;->a(I)Lcom/applovin/impl/u0;

    move-result-object p1

    .line 21
    iget-object p3, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/applovin/impl/y0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting consent flow with states: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/y0;->c:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nInitial state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_3
    invoke-static {p2}, Lcom/applovin/impl/sdk/k;->a(Landroid/content/Context;)Lcom/applovin/impl/c;

    move-result-object p3

    iget-object v0, p0, Lcom/applovin/impl/y0;->j:Lcom/applovin/impl/b;

    invoke-virtual {p3, v0}, Lcom/applovin/impl/c;->a(Lcom/applovin/impl/b;)V

    const/4 p3, 0x0

    .line 23
    invoke-direct {p0, p3, p1, p2}, Lcom/applovin/impl/y0;->a(Lcom/applovin/impl/u0;Lcom/applovin/impl/u0;Landroid/app/Activity;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/applovin/impl/t0$c;)V
    .locals 1

    .line 10
    sget-object v0, Lcom/applovin/impl/u0$a;->c:Lcom/applovin/impl/u0$a;

    invoke-virtual {v0}, Lcom/applovin/impl/u0$a;->b()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/applovin/impl/y0;->a(ILandroid/app/Activity;Lcom/applovin/impl/t0$c;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/applovin/impl/y0;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
