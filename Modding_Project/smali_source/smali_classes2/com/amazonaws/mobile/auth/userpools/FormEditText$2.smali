.class Lcom/amazonaws/mobile/auth/userpools/FormEditText$2;
.super Ljava/lang/Object;
.source "FormEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/auth/userpools/FormEditText;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/auth/userpools/FormEditText;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$2;->a:Lcom/amazonaws/mobile/auth/userpools/FormEditText;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$2;->a:Lcom/amazonaws/mobile/auth/userpools/FormEditText;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->b(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Landroid/widget/EditText;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$2;->a:Lcom/amazonaws/mobile/auth/userpools/FormEditText;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->c(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$2;->a:Lcom/amazonaws/mobile/auth/userpools/FormEditText;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->d(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Landroid/widget/TextView;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$2;->a:Lcom/amazonaws/mobile/auth/userpools/FormEditText;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->b(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Landroid/widget/EditText;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v3, 0x2

    .line 44
    invoke-static {v3}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-static {v3}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-static {}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->e()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    add-int/2addr v3, v5

    .line 57
    invoke-virtual {v0, v1, v4, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$2;->a:Lcom/amazonaws/mobile/auth/userpools/FormEditText;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->a(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Landroid/widget/TextView;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$2;->a:Lcom/amazonaws/mobile/auth/userpools/FormEditText;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->a(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Landroid/widget/TextView;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$2;->a:Lcom/amazonaws/mobile/auth/userpools/FormEditText;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->d(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Landroid/widget/TextView;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$2;->a:Lcom/amazonaws/mobile/auth/userpools/FormEditText;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->b(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Landroid/widget/EditText;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const/4 v2, 0x1

    .line 94
    invoke-static {v2}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    const/4 v3, 0x3

    .line 99
    invoke-static {v3}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-static {}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->e()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    add-int/2addr v3, v4

    .line 108
    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$2;->a:Lcom/amazonaws/mobile/auth/userpools/FormEditText;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->a(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Landroid/widget/TextView;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    .line 119
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$2;->a:Lcom/amazonaws/mobile/auth/userpools/FormEditText;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->a(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Landroid/widget/TextView;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/userpools/FormEditText$2;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method
