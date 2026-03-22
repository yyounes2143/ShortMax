.class public Lcom/facebook/login/WebViewLoginMethodHandler;
.super Lcom/facebook/login/WebLoginMethodHandler;
.source "WebViewLoginMethodHandler.kt"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/WebViewLoginMethodHandler$a;,
        Lcom/facebook/login/WebViewLoginMethodHandler$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/WebViewLoginMethodHandler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Lcom/facebook/login/WebViewLoginMethodHandler$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private f:Lcom/facebook/internal/WebDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Lcom/facebook/AccessTokenSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/login/WebViewLoginMethodHandler$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/login/WebViewLoginMethodHandler$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/login/WebViewLoginMethodHandler;->j:Lcom/facebook/login/WebViewLoginMethodHandler$c;

    .line 8
    .line 9
    new-instance v0, Lcom/facebook/login/WebViewLoginMethodHandler$b;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/facebook/login/WebViewLoginMethodHandler$b;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/facebook/login/WebViewLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 5
    const-string v0, "web_view"

    iput-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->h:Ljava/lang/String;

    .line 6
    sget-object v0, Lcom/facebook/AccessTokenSource;->WEB_VIEW:Lcom/facebook/AccessTokenSource;

    iput-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->i:Lcom/facebook/AccessTokenSource;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 1
    .param p1    # Lcom/facebook/login/LoginClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "loginClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 2
    const-string p1, "web_view"

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->h:Ljava/lang/String;

    .line 3
    sget-object p1, Lcom/facebook/AccessTokenSource;->WEB_VIEW:Lcom/facebook/AccessTokenSource;

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->i:Lcom/facebook/AccessTokenSource;

    return-void
.end method


# virtual methods
.method public final D(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 1
    .param p1    # Lcom/facebook/login/LoginClient$Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/FacebookException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/login/WebLoginMethodHandler;->B(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->f:Lcom/facebook/internal/WebDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/facebook/internal/WebDialog;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->f:Lcom/facebook/internal/WebDialog;

    .line 12
    .line 13
    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public p(Lcom/facebook/login/LoginClient$Request;)I
    .locals 6
    .param p1    # Lcom/facebook/login/LoginClient$Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;->x(Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/facebook/login/WebViewLoginMethodHandler$d;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/facebook/login/WebViewLoginMethodHandler$d;-><init>(Lcom/facebook/login/WebViewLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;)V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lcom/facebook/login/LoginClient;->m:Lcom/facebook/login/LoginClient$c;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/facebook/login/LoginClient$c;->a()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iput-object v2, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->g:Ljava/lang/String;

    .line 22
    .line 23
    const-string v3, "e2e"

    .line 24
    .line 25
    invoke-virtual {p0, v3, v2}, Lcom/facebook/login/LoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/facebook/login/LoginMethodHandler;->d()Lcom/facebook/login/LoginClient;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->j()Landroidx/fragment/app/FragmentActivity;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    return p1

    .line 40
    :cond_0
    invoke-static {v2}, Lcom/facebook/internal/u0;->X(Landroid/content/Context;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    new-instance v4, Lcom/facebook/login/WebViewLoginMethodHandler$a;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-direct {v4, p0, v2, v5, v0}, Lcom/facebook/login/WebViewLoginMethodHandler$a;-><init>(Lcom/facebook/login/WebViewLoginMethodHandler;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->g:Ljava/lang/String;

    .line 54
    .line 55
    const-string v5, "null cannot be cast to non-null type kotlin.String"

    .line 56
    .line 57
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v0}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->m(Ljava/lang/String;)Lcom/facebook/login/WebViewLoginMethodHandler$a;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, v3}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->p(Z)Lcom/facebook/login/WebViewLoginMethodHandler$a;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->c()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v0, v3}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->k(Ljava/lang/String;)Lcom/facebook/login/WebViewLoginMethodHandler$a;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->k()Lcom/facebook/login/LoginBehavior;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v0, v3}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->q(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/WebViewLoginMethodHandler$a;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->l()Lcom/facebook/login/LoginTargetApp;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v0, v3}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->r(Lcom/facebook/login/LoginTargetApp;)Lcom/facebook/login/WebViewLoginMethodHandler$a;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->x()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-virtual {v0, v3}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->o(Z)Lcom/facebook/login/WebViewLoginMethodHandler$a;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->I()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-virtual {v0, p1}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->s(Z)Lcom/facebook/login/WebViewLoginMethodHandler$a;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1, v1}, Lcom/facebook/internal/WebDialog$a;->h(Lcom/facebook/internal/WebDialog$d;)Lcom/facebook/internal/WebDialog$a;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lcom/facebook/internal/WebDialog$a;->a()Lcom/facebook/internal/WebDialog;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->f:Lcom/facebook/internal/WebDialog;

    .line 117
    .line 118
    new-instance p1, Lcom/facebook/internal/FacebookDialogFragment;

    .line 119
    .line 120
    invoke-direct {p1}, Lcom/facebook/internal/FacebookDialogFragment;-><init>()V

    .line 121
    .line 122
    .line 123
    const/4 v0, 0x1

    .line 124
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->f:Lcom/facebook/internal/WebDialog;

    .line 128
    .line 129
    invoke-virtual {p1, v1}, Lcom/facebook/internal/FacebookDialogFragment;->l(Landroid/app/Dialog;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const-string v2, "FacebookDialogFragment"

    .line 137
    .line 138
    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/facebook/login/LoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->g:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public z()Lcom/facebook/AccessTokenSource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->i:Lcom/facebook/AccessTokenSource;

    .line 2
    .line 3
    return-object v0
.end method
