.class public final Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;
.super Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;
.source "LoginActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity<",
        "Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLoginActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginActivity.kt\ncom/startshorts/androidplayer/ui/activity/auth/LoginActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,490:1\n254#2:491\n254#2:492\n*S KotlinDebug\n*F\n+ 1 LoginActivity.kt\ncom/startshorts/androidplayer/ui/activity/auth/LoginActivity\n*L\n377#1:491\n425#1:492\n*E\n"
    }
.end annotation


# static fields
.field public static final t:Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final l:Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final m:Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final n:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final s:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->t:Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$h;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$h;-><init>(Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->l:Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$h;

    .line 10
    .line 11
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$g;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$g;-><init>(Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->m:Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$g;

    .line 17
    .line 18
    new-instance v0, Lsh/e;

    .line 19
    .line 20
    invoke-direct {v0}, Lsh/e;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->n:Lms/i;

    .line 28
    .line 29
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 30
    .line 31
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lsh/f;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lsh/f;-><init>(Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "registerForActivityResult(...)"

    .line 44
    .line 45
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->s:Landroidx/activity/result/ActivityResultLauncher;

    .line 49
    .line 50
    return-void
.end method

.method public static synthetic H(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->f0(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic I(Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->h0(Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic J(Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->Z(Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic K()Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->e0()Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic L(Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->R()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic M(Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->S()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic N(Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->g0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final O()V
    .locals 1

    .line 1
    sget-object v0, Lae/a;->a:Lae/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lae/a;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->x()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->Q()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->P()V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method private final P()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->b:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v3

    .line 22
    :goto_0
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->j:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    const-string v4, "layoutLineOrLine"

    .line 33
    .line 34
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 48
    .line 49
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->j:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 56
    .line 57
    const/high16 v2, 0x42300000    # 44.0f

    .line 58
    .line 59
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 71
    .line 72
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->n:Landroid/widget/ImageView;

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 79
    .line 80
    const/high16 v2, 0x42880000    # 68.0f

    .line 81
    .line 82
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    move-object v1, v3

    .line 90
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 98
    .line 99
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->e:Landroid/view/View;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 106
    .line 107
    if-eqz v2, :cond_3

    .line 108
    .line 109
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    move-object v1, v3

    .line 113
    :goto_2
    if-eqz v1, :cond_4

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 120
    .line 121
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->b:Landroid/view/View;

    .line 122
    .line 123
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 128
    .line 129
    const/high16 v2, 0x41a00000    # 20.0f

    .line 130
    .line 131
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_4
    move-object v1, v3

    .line 139
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 147
    .line 148
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 155
    .line 156
    if-eqz v2, :cond_5

    .line 157
    .line 158
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_5
    move-object v1, v3

    .line 162
    :goto_4
    if-eqz v1, :cond_6

    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 169
    .line 170
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->e:Landroid/view/View;

    .line 171
    .line 172
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 177
    .line 178
    const/high16 v2, 0x42b40000    # 90.0f

    .line 179
    .line 180
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_6
    move-object v1, v3

    .line 188
    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 196
    .line 197
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->l:Landroidx/databinding/ViewStubProxy;

    .line 198
    .line 199
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    if-eqz v0, :cond_9

    .line 204
    .line 205
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 210
    .line 211
    if-eqz v2, :cond_7

    .line 212
    .line 213
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_7
    move-object v1, v3

    .line 217
    :goto_6
    if-eqz v1, :cond_8

    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 224
    .line 225
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->b:Landroid/view/View;

    .line 226
    .line 227
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 232
    .line 233
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 238
    .line 239
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->b:Landroid/view/View;

    .line 240
    .line 241
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 252
    .line 253
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->b:Landroid/view/View;

    .line 254
    .line 255
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 260
    .line 261
    goto :goto_7

    .line 262
    :cond_8
    move-object v1, v3

    .line 263
    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    .line 265
    .line 266
    :cond_9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 271
    .line 272
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->m:Landroidx/databinding/ViewStubProxy;

    .line 273
    .line 274
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    if-eqz v0, :cond_c

    .line 279
    .line 280
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 285
    .line 286
    if-eqz v2, :cond_a

    .line 287
    .line 288
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 289
    .line 290
    goto :goto_8

    .line 291
    :cond_a
    move-object v1, v3

    .line 292
    :goto_8
    if-eqz v1, :cond_b

    .line 293
    .line 294
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 299
    .line 300
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->b:Landroid/view/View;

    .line 301
    .line 302
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 307
    .line 308
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 313
    .line 314
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->b:Landroid/view/View;

    .line 315
    .line 316
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 321
    .line 322
    goto :goto_9

    .line 323
    :cond_b
    move-object v1, v3

    .line 324
    :goto_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    .line 326
    .line 327
    :cond_c
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 332
    .line 333
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->k:Landroidx/databinding/ViewStubProxy;

    .line 334
    .line 335
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    if-eqz v0, :cond_f

    .line 340
    .line 341
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 346
    .line 347
    if-eqz v2, :cond_d

    .line 348
    .line 349
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 350
    .line 351
    goto :goto_a

    .line 352
    :cond_d
    move-object v1, v3

    .line 353
    :goto_a
    if-eqz v1, :cond_e

    .line 354
    .line 355
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 360
    .line 361
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->b:Landroid/view/View;

    .line 362
    .line 363
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 368
    .line 369
    move-object v3, v1

    .line 370
    :cond_e
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    .line 372
    .line 373
    :cond_f
    return-void
.end method

.method private final Q()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->e:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v3

    .line 22
    :goto_0
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->j:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    const-string v4, "layoutLineOrLine"

    .line 33
    .line 34
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 48
    .line 49
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->j:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 56
    .line 57
    const/high16 v2, 0x42300000    # 44.0f

    .line 58
    .line 59
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 71
    .line 72
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->n:Landroid/widget/ImageView;

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 79
    .line 80
    const/high16 v2, 0x42880000    # 68.0f

    .line 81
    .line 82
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    move-object v1, v3

    .line 90
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 98
    .line 99
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->b:Landroid/view/View;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 106
    .line 107
    if-eqz v2, :cond_3

    .line 108
    .line 109
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    move-object v1, v3

    .line 113
    :goto_2
    if-eqz v1, :cond_4

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 120
    .line 121
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->e:Landroid/view/View;

    .line 122
    .line 123
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 128
    .line 129
    const/high16 v2, 0x41a00000    # 20.0f

    .line 130
    .line 131
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_4
    move-object v1, v3

    .line 139
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 147
    .line 148
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 155
    .line 156
    if-eqz v2, :cond_5

    .line 157
    .line 158
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_5
    move-object v1, v3

    .line 162
    :goto_4
    if-eqz v1, :cond_6

    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 169
    .line 170
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->b:Landroid/view/View;

    .line 171
    .line 172
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 177
    .line 178
    const/high16 v2, 0x42b40000    # 90.0f

    .line 179
    .line 180
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_6
    move-object v1, v3

    .line 188
    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 196
    .line 197
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->l:Landroidx/databinding/ViewStubProxy;

    .line 198
    .line 199
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    if-eqz v0, :cond_9

    .line 204
    .line 205
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 210
    .line 211
    if-eqz v2, :cond_7

    .line 212
    .line 213
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_7
    move-object v1, v3

    .line 217
    :goto_6
    if-eqz v1, :cond_8

    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 224
    .line 225
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->e:Landroid/view/View;

    .line 226
    .line 227
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 232
    .line 233
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 238
    .line 239
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->e:Landroid/view/View;

    .line 240
    .line 241
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 252
    .line 253
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->e:Landroid/view/View;

    .line 254
    .line 255
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 260
    .line 261
    goto :goto_7

    .line 262
    :cond_8
    move-object v1, v3

    .line 263
    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    .line 265
    .line 266
    :cond_9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 271
    .line 272
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->m:Landroidx/databinding/ViewStubProxy;

    .line 273
    .line 274
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    if-eqz v0, :cond_c

    .line 279
    .line 280
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 285
    .line 286
    if-eqz v2, :cond_a

    .line 287
    .line 288
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 289
    .line 290
    goto :goto_8

    .line 291
    :cond_a
    move-object v1, v3

    .line 292
    :goto_8
    if-eqz v1, :cond_b

    .line 293
    .line 294
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 299
    .line 300
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->e:Landroid/view/View;

    .line 301
    .line 302
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 307
    .line 308
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 313
    .line 314
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->e:Landroid/view/View;

    .line 315
    .line 316
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 321
    .line 322
    goto :goto_9

    .line 323
    :cond_b
    move-object v1, v3

    .line 324
    :goto_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    .line 326
    .line 327
    :cond_c
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 332
    .line 333
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->k:Landroidx/databinding/ViewStubProxy;

    .line 334
    .line 335
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    if-eqz v0, :cond_f

    .line 340
    .line 341
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 346
    .line 347
    if-eqz v2, :cond_d

    .line 348
    .line 349
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 350
    .line 351
    goto :goto_a

    .line 352
    :cond_d
    move-object v1, v3

    .line 353
    :goto_a
    if-eqz v1, :cond_e

    .line 354
    .line 355
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 360
    .line 361
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->e:Landroid/view/View;

    .line 362
    .line 363
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 368
    .line 369
    move-object v3, v1

    .line 370
    :cond_e
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    .line 372
    .line 373
    :cond_f
    return-void
.end method

.method private final R()V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "scene"

    .line 9
    .line 10
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->o:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "type"

    .line 16
    .line 17
    const-string v3, "facebook"

    .line 18
    .line 19
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x0

    .line 26
    const-string v1, "login_click"

    .line 27
    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->U()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->n:Lms/i;

    .line 37
    .line 38
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 43
    .line 44
    sget-object v1, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->a(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private final S()V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "scene"

    .line 9
    .line 10
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->o:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "type"

    .line 16
    .line 17
    const-string v3, "google"

    .line 18
    .line 19
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x0

    .line 26
    const-string v1, "login_click"

    .line 27
    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->U()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->n:Lms/i;

    .line 37
    .line 38
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 43
    .line 44
    sget-object v1, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->b(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private final T()V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "scene"

    .line 9
    .line 10
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->o:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "type"

    .line 16
    .line 17
    const-string v3, "huawei"

    .line 18
    .line 19
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x0

    .line 26
    const-string v1, "login_click"

    .line 27
    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->U()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->n:Lms/i;

    .line 37
    .line 38
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 43
    .line 44
    sget-object v1, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->c(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private final U()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->n:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->isInitialized()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "initAuthManager"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->n:Lms/i;

    .line 16
    .line 17
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->p(Ljava/lang/ref/WeakReference;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->o:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->F(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$b;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$b;-><init>(Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->s(Lke/b;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private final V()V
    .locals 1

    .line 1
    sget-object v0, Lae/a;->a:Lae/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lae/a;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->b0()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->Y()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private final W()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    sget v1, Lcom/startshorts/androidplayer/R$string;->login_activity_login_with:I

    .line 10
    .line 11
    const-string v2, "Facebook"

    .line 12
    .line 13
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->b:Landroid/view/View;

    .line 31
    .line 32
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$c;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$c;-><init>(Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private final X()V
    .locals 3

    .line 1
    sget-object v0, Lae/a;->a:Lae/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lae/a;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->e:Landroid/view/View;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->f:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 50
    .line 51
    sget v1, Lcom/startshorts/androidplayer/R$string;->login_activity_login_with:I

    .line 52
    .line 53
    const-string v2, "Google"

    .line 54
    .line 55
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->e:Landroid/view/View;

    .line 73
    .line 74
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$d;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$d;-><init>(Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->e:Landroid/view/View;

    .line 90
    .line 91
    const/16 v1, 0x8

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->f:Landroid/widget/ImageView;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 112
    .line 113
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    :goto_0
    return-void
.end method

.method private final Y()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->q:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->p:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->j:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->h:Landroidx/databinding/ViewStubProxy;

    .line 44
    .line 45
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Ljk/e0;->g(Landroidx/databinding/ViewStubProxy;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    instance-of v1, v0, Lcom/hades/aar/auth/HuaWeiLoginView;

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    check-cast v0, Lcom/hades/aar/auth/HuaWeiLoginView;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    move-object v0, v2

    .line 64
    :goto_0
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->j:Landroid/widget/LinearLayout;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    instance-of v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 79
    .line 80
    if-eqz v4, :cond_1

    .line 81
    .line 82
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    move-object v3, v2

    .line 86
    :goto_1
    if-eqz v3, :cond_2

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 93
    .line 94
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->h:Landroidx/databinding/ViewStubProxy;

    .line 95
    .line 96
    invoke-virtual {v2}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 105
    .line 106
    move-object v2, v3

    .line 107
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    .line 109
    .line 110
    new-instance v1, Lsh/h;

    .line 111
    .line 112
    invoke-direct {v1, p0}, Lsh/h;-><init>(Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lcom/hades/aar/auth/HuaWeiLoginView;->setOnAuthButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    return-void
.end method

.method private static final Z(Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->T()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->o:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$e;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$e;-><init>(Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final b0()V
    .locals 5

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->L0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->q:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 14
    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    move v4, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v4, v2

    .line 23
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->p:Landroid/view/View;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    move v4, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v4, v2

    .line 39
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->j:Landroid/widget/LinearLayout;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    move v2, v3

    .line 53
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->j:Landroid/widget/LinearLayout;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    move-object v1, v3

    .line 79
    :goto_2
    if-eqz v1, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 86
    .line 87
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->p:Landroid/view/View;

    .line 88
    .line 89
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 94
    .line 95
    move-object v3, v1

    .line 96
    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    .line 98
    .line 99
    :cond_5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->p:Landroid/view/View;

    .line 106
    .line 107
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$f;

    .line 108
    .line 109
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$f;-><init>(Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method private final c0()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->r:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    const-string v0, "policyTv"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget v0, Lcom/startshorts/androidplayer/R$string;->login_activity_policy:I

    .line 15
    .line 16
    sget v2, Lcom/startshorts/androidplayer/R$string;->settings_fragment_user_agreement:I

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sget v3, Lcom/startshorts/androidplayer/R$string;->settings_fragment_privacy_policy:I

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v0, "getString(...)"

    .line 37
    .line 38
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget v0, Lcom/startshorts/androidplayer/R$string;->settings_fragment_user_agreement:I

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget v3, Lcom/startshorts/androidplayer/R$string;->settings_fragment_privacy_policy:I

    .line 48
    .line 49
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    sget-object v0, Lyf/a;->a:Lyf/a;

    .line 58
    .line 59
    invoke-virtual {v0}, Lyf/a;->g()Landroid/graphics/Typeface;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const v0, 0x106000b

    .line 64
    .line 65
    .line 66
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->l:Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$h;

    .line 71
    .line 72
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->m:Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$g;

    .line 73
    .line 74
    const/4 v7, 0x2

    .line 75
    new-array v7, v7, [Lyd/d;

    .line 76
    .line 77
    const/4 v8, 0x0

    .line 78
    aput-object v0, v7, v8

    .line 79
    .line 80
    const/4 v0, 0x1

    .line 81
    aput-object v6, v7, v0

    .line 82
    .line 83
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    const/16 v9, 0x30

    .line 88
    .line 89
    const/4 v10, 0x0

    .line 90
    const/4 v6, 0x0

    .line 91
    const/4 v7, 0x0

    .line 92
    invoke-static/range {v1 .. v10}, Ljk/y;->l(Landroid/widget/TextView;Ljava/lang/String;[Ljava/lang/String;ILandroid/graphics/Typeface;FZLjava/util/List;ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method private final d0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->s:Landroid/view/View;

    .line 8
    .line 9
    const-string v1, "toolbarView"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v0, v1}, Ljk/b0;->g(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static final e0()Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final f0(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, -0x4f9dbd6c

    .line 8
    .line 9
    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const v1, 0x4cecfdd3    # 1.242518E8f

    .line 13
    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const v1, 0x64833000

    .line 18
    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "autoLoginFaceBook"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->R()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const-string v0, "autoLoginGoogle"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_5

    .line 43
    .line 44
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->S()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    const-string v0, "autoLoginPhone"

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_4

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->g0()V

    .line 58
    .line 59
    .line 60
    :cond_5
    :goto_0
    return-void
.end method

.method private final g0()V
    .locals 8

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "scene"

    .line 9
    .line 10
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->o:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "type"

    .line 16
    .line 17
    const-string v3, "phone"

    .line 18
    .line 19
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x0

    .line 26
    const-string v1, "login_click"

    .line 27
    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->U()V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 37
    .line 38
    sget-object v1, Lcom/startshorts/androidplayer/ui/fragment/a;->a:Lcom/startshorts/androidplayer/ui/fragment/a;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/a;->i()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 45
    .line 46
    const-string v3, "auth_reason"

    .line 47
    .line 48
    const-string v4, "1"

    .line 49
    .line 50
    invoke-direct {v2, v3, v4}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 54
    .line 55
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->p:Ljava/lang/String;

    .line 56
    .line 57
    const-string v5, ""

    .line 58
    .line 59
    if-nez v4, :cond_0

    .line 60
    .line 61
    move-object v4, v5

    .line 62
    :cond_0
    const-string v6, "auth_reason_phone"

    .line 63
    .line 64
    invoke-direct {v3, v6, v4}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v4, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 68
    .line 69
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->q:Ljava/lang/String;

    .line 70
    .line 71
    if-nez v6, :cond_1

    .line 72
    .line 73
    move-object v6, v5

    .line 74
    :cond_1
    const-string v7, "auth_reason_area_code"

    .line 75
    .line 76
    invoke-direct {v4, v7, v6}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v6, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 80
    .line 81
    iget-object v7, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->r:Ljava/lang/String;

    .line 82
    .line 83
    if-nez v7, :cond_2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    move-object v5, v7

    .line 87
    :goto_0
    const-string v7, "auth_reason_country_code"

    .line 88
    .line 89
    invoke-direct {v6, v7, v5}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 v5, 0x4

    .line 93
    new-array v5, v5, [Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 94
    .line 95
    const/4 v7, 0x0

    .line 96
    aput-object v2, v5, v7

    .line 97
    .line 98
    const/4 v2, 0x1

    .line 99
    aput-object v3, v5, v2

    .line 100
    .line 101
    const/4 v2, 0x2

    .line 102
    aput-object v4, v5, v2

    .line 103
    .line 104
    const/4 v2, 0x3

    .line 105
    aput-object v6, v5, v2

    .line 106
    .line 107
    invoke-virtual {v0, p0, v1, v5}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->c(Landroid/content/Context;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->s:Landroidx/activity/result/ActivityResultLauncher;

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method private static final h0(Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private final i0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->k:Landroidx/databinding/ViewStubProxy;

    .line 8
    .line 9
    const-string v1, "loginRewardCoinViewstub"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljk/e0;->h(Landroidx/databinding/ViewStubProxy;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final j0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->l:Landroidx/databinding/ViewStubProxy;

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljk/e0;->g(Landroidx/databinding/ViewStubProxy;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final k0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->m:Landroidx/databinding/ViewStubProxy;

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljk/e0;->h(Landroidx/databinding/ViewStubProxy;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->x()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v2, v0, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    if-eqz v0, :cond_2

    .line 34
    .line 35
    sget v2, Lcom/startshorts/androidplayer/R$string;->profile_fragment_reward_tip2:I

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    sget-object v1, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->g()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->h()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :goto_1
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method

.method private final l0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->j0()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->i0()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->k0()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->activity_login:I

    .line 2
    .line 3
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->n:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 8
    .line 9
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/auth/a;->l(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "autoLogin"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->J0()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "from"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->o:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "ex_phone"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->p:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "ex_area_code"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->q:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "ex_country_code"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->r:Ljava/lang/String;

    .line 79
    .line 80
    sget-object v0, Led/a;->a:Led/a;

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    invoke-virtual {v0, p0, v1}, Led/a;->b(Landroid/app/Activity;Z)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->d0()V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->a0()V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->V()V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->W()V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->X()V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->c0()V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->O()V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->l0()V

    .line 108
    .line 109
    .line 110
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 111
    .line 112
    new-instance v4, Landroid/os/Bundle;

    .line 113
    .line 114
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v0, "scene"

    .line 118
    .line 119
    const-string v1, "login_page"

    .line 120
    .line 121
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 125
    .line 126
    const/4 v7, 0x4

    .line 127
    const/4 v8, 0x0

    .line 128
    const-string v3, "login_windows_show"

    .line 129
    .line 130
    const-wide/16 v5, 0x0

    .line 131
    .line 132
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-nez v0, :cond_1

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;

    .line 146
    .line 147
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    new-instance v1, Lsh/g;

    .line 152
    .line 153
    invoke-direct {v1, p1, p0}, Lsh/g;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;)V

    .line 154
    .line 155
    .line 156
    const-wide/16 v2, 0x1f4

    .line 157
    .line 158
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    .line 160
    .line 161
    :cond_1
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "LoginActivity"

    .line 2
    .line 3
    return-object v0
.end method

.method public v()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->v()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->n:Lms/i;

    .line 5
    .line 6
    invoke-interface {v0}, Lms/i;->isInitialized()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->n:Lms/i;

    .line 13
    .line 14
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/auth/a;->n()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
