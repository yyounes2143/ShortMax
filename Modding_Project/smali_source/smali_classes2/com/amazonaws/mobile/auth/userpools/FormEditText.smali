.class public Lcom/amazonaws/mobile/auth/userpools/FormEditText;
.super Landroid/widget/LinearLayout;
.source "FormEditText.java"


# static fields
.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    sput v1, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->f:I

    .line 7
    .line 8
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sput v1, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->g:I

    .line 13
    .line 14
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sput v0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->h:I

    .line 19
    .line 20
    const/4 v0, -0x5

    .line 21
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sput v0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->i:I

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->d:Landroid/widget/TextView;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->e:Z

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x10

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->a:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p3, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->a:Landroid/widget/TextView;

    .line 38
    .line 39
    const/16 v2, 0xf01

    .line 40
    .line 41
    invoke-direct {p0, v2}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->h(I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 49
    .line 50
    const/4 v2, -0x1

    .line 51
    const/4 v3, -0x2

    .line 52
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53
    .line 54
    .line 55
    sget v2, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->f:I

    .line 56
    .line 57
    invoke-virtual {v1, v0, v2, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->a:Landroid/widget/TextView;

    .line 61
    .line 62
    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->a:Landroid/widget/TextView;

    .line 66
    .line 67
    const/4 v2, 0x4

    .line 68
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Landroid/widget/EditText;

    .line 72
    .line 73
    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->b:Landroid/widget/EditText;

    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->b:Landroid/widget/EditText;

    .line 82
    .line 83
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setInputType(I)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->b:Landroid/widget/EditText;

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->b:Landroid/widget/EditText;

    .line 92
    .line 93
    const/4 v2, 0x2

    .line 94
    invoke-static {v2}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    invoke-static {v2}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    sget v5, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->g:I

    .line 103
    .line 104
    add-int/2addr v2, v5

    .line 105
    invoke-virtual {v1, v0, v4, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->b:Landroid/widget/EditText;

    .line 109
    .line 110
    const/16 v2, 0xf02

    .line 111
    .line 112
    invoke-direct {p0, v2}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->h(I)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->b:Landroid/widget/EditText;

    .line 120
    .line 121
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    .line 125
    .line 126
    invoke-direct {p3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 130
    .line 131
    .line 132
    and-int/lit16 p2, p2, 0x80

    .line 133
    .line 134
    if-lez p2, :cond_0

    .line 135
    .line 136
    new-instance p2, Landroid/widget/LinearLayout;

    .line 137
    .line 138
    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 139
    .line 140
    .line 141
    iput-object p2, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->c:Landroid/widget/LinearLayout;

    .line 142
    .line 143
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 144
    .line 145
    .line 146
    const p2, 0x800003

    .line 147
    .line 148
    .line 149
    iput p2, p3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 150
    .line 151
    const/high16 p2, 0x3f800000    # 1.0f

    .line 152
    .line 153
    iput p2, p3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 154
    .line 155
    iget-object p2, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->c:Landroid/widget/LinearLayout;

    .line 156
    .line 157
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->b:Landroid/widget/EditText;

    .line 158
    .line 159
    invoke-virtual {p2, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    .line 161
    .line 162
    new-instance p2, Landroid/widget/TextView;

    .line 163
    .line 164
    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 165
    .line 166
    .line 167
    iput-object p2, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->d:Landroid/widget/TextView;

    .line 168
    .line 169
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->f()V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->c:Landroid/widget/LinearLayout;

    .line 173
    .line 174
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->b:Landroid/widget/EditText;

    .line 179
    .line 180
    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    .line 182
    .line 183
    :goto_0
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->g()V

    .line 184
    .line 185
    .line 186
    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->b:Landroid/widget/EditText;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->a:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e()I
    .locals 1

    .line 1
    sget v0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->g:I

    .line 2
    .line 3
    return v0
.end method

.method private f()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/amazonaws/mobile/auth/userpools/R$string;->o:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget v2, Lcom/amazonaws/mobile/auth/userpools/R$string;->l:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->d:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 27
    .line 28
    const/4 v3, -0x2

    .line 29
    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 30
    .line 31
    .line 32
    sget v3, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->h:I

    .line 33
    .line 34
    sget v4, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->i:I

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-virtual {v2, v3, v4, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 38
    .line 39
    .line 40
    const v3, 0x800015

    .line 41
    .line 42
    .line 43
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44
    .line 45
    iget-object v3, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->c:Landroid/widget/LinearLayout;

    .line 46
    .line 47
    iget-object v4, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->d:Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->d:Landroid/widget/TextView;

    .line 53
    .line 54
    const/16 v3, 0x8

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->d:Landroid/widget/TextView;

    .line 60
    .line 61
    new-instance v3, Lcom/amazonaws/mobile/auth/userpools/FormEditText$1;

    .line 62
    .line 63
    invoke-direct {v3, p0, v0, v1}, Lcom/amazonaws/mobile/auth/userpools/FormEditText$1;-><init>(Lcom/amazonaws/mobile/auth/userpools/FormEditText;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->b:Landroid/widget/EditText;

    .line 2
    .line 3
    new-instance v1, Lcom/amazonaws/mobile/auth/userpools/FormEditText$2;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/amazonaws/mobile/auth/userpools/FormEditText$2;-><init>(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private h(I)I
    .locals 0
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 1
    return p1
.end method


# virtual methods
.method public getEditTextView()Landroid/widget/EditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->b:Landroid/widget/EditText;

    .line 2
    .line 3
    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->e:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->a:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    sget p2, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->f:I

    .line 15
    .line 16
    add-int/2addr p1, p2

    .line 17
    iget-object p2, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->b:Landroid/widget/EditText;

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    add-int/2addr p1, p2

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->a:Landroid/widget/TextView;

    .line 28
    .line 29
    const/16 p2, 0x8

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->e:Z

    .line 36
    .line 37
    :cond_0
    return-void
.end method
