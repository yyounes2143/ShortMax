.class public final Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;
.source "CheckInSuccessDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final v:Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private o:I

.field private p:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->v:Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->t:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->u:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic F(Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->T(Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->S(Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final N()V
    .locals 4

    .line 1
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 2
    .line 3
    sget v1, Lcom/startshorts/androidplayer/R$string;->check_in_dialog_get_now:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lfk/u;->d(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->t:Ljava/lang/String;

    .line 10
    .line 11
    sget v1, Lcom/startshorts/androidplayer/R$string;->check_in_dialog_get_now_watch_ad_nums:I

    .line 12
    .line 13
    iget v2, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->j:I

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget v3, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->k:I

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v1, v2}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->u:Ljava/lang/String;

    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->i:Z

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->j:I

    .line 40
    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 50
    .line 51
    sget v2, Lcom/startshorts/androidplayer/R$string;->check_in_dialog_title:I

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 67
    .line 68
    sget v2, Lcom/startshorts/androidplayer/R$string;->check_in_dialog_watch_all_ads:I

    .line 69
    .line 70
    iget v3, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->k:I

    .line 71
    .line 72
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v0, v2, v3}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 94
    .line 95
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 105
    .line 106
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 115
    .line 116
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 117
    .line 118
    sget v2, Lcom/startshorts/androidplayer/R$string;->check_in_result_dialog_fragment_title:I

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 132
    .line 133
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 134
    .line 135
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 143
    .line 144
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 145
    .line 146
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 147
    .line 148
    .line 149
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 154
    .line 155
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 156
    .line 157
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->u:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 167
    .line 168
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 169
    .line 170
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->l:I

    .line 171
    .line 172
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 184
    .line 185
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 186
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const/16 v2, 0x2b

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    iget v2, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->m:I

    .line 198
    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->k:I

    .line 210
    .line 211
    if-eqz v0, :cond_2

    .line 212
    .line 213
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->j:I

    .line 214
    .line 215
    if-lt v1, v0, :cond_1

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 223
    .line 224
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 225
    .line 226
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->n:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 237
    .line 238
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->o:Landroid/view/View;

    .line 239
    .line 240
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 248
    .line 249
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->i:Landroid/widget/ImageView;

    .line 250
    .line 251
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 259
    .line 260
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 261
    .line 262
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 270
    .line 271
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 272
    .line 273
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 274
    .line 275
    .line 276
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->W()V

    .line 277
    .line 278
    .line 279
    :goto_2
    return-void
.end method

.method private final O()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->h:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 24
    .line 25
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog$c;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private static final S(Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->U(I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->V(Z)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method private static final T(Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->U(I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->V(Z)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private final U(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->t:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/16 v2, 0x20

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 p1, 0x73

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->t:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    iget p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->j:I

    .line 56
    .line 57
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->k:I

    .line 58
    .line 59
    if-lt p1, v0, :cond_1

    .line 60
    .line 61
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->W()V

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    return-void
.end method

.method private final V(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 22
    .line 23
    const v0, 0x3f19999a    # 0.6f

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 49
    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method private final W()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->d:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 19
    .line 20
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 30
    .line 31
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 32
    .line 33
    sget v2, Lcom/startshorts/androidplayer/R$string;->check_in_dialog_check_more:I

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final H()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->p:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    const-string v0, "cancelBtnCountDown"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->q(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->p:Lkotlinx/coroutines/r;

    .line 18
    .line 19
    return-void
.end method

.method public final I()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->s:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->r:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final K()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public final L()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public final M()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->q:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->r:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final Q(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->q:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final R()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->j:I

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->k:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->H()V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 11
    .line 12
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->o:I

    .line 13
    .line 14
    new-instance v2, Lpi/a;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Lpi/a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lpi/b;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lpi/b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->d(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->p:Lkotlinx/coroutines/r;

    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public k()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_check_in_success:I

    .line 2
    .line 3
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string v1, "isSpecialTitle"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p1, v0

    .line 19
    :goto_0
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->i:Z

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const-string v1, "completeNum"

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move p1, v0

    .line 35
    :goto_1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->j:I

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    const-string v1, "sumNum"

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move p1, v0

    .line 51
    :goto_2
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->k:I

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    const-string v1, "currentBonus"

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    move p1, v0

    .line 67
    :goto_3
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->l:I

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    const-string v1, "nextTaskBonus"

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    goto :goto_4

    .line 82
    :cond_4
    move p1, v0

    .line 83
    :goto_4
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->m:I

    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_5

    .line 90
    .line 91
    const-string v1, "nextTaskDesc"

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-nez p1, :cond_6

    .line 98
    .line 99
    :cond_5
    const-string p1, ""

    .line 100
    .line 101
    :cond_6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->n:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-eqz p1, :cond_7

    .line 108
    .line 109
    const-string v0, "countDown"

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    :cond_7
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->o:I

    .line 116
    .line 117
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->p:Lkotlinx/coroutines/r;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->p:Lkotlinx/coroutines/r;

    .line 19
    .line 20
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->j:I

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->R()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->N()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->O()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public p()I
    .locals 1

    .line 1
    const/high16 v0, 0x438c0000    # 280.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
