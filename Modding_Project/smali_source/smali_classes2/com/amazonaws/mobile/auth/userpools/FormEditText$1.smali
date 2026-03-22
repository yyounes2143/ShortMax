.class Lcom/amazonaws/mobile/auth/userpools/FormEditText$1;
.super Ljava/lang/Object;
.source "FormEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/auth/userpools/FormEditText;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amazonaws/mobile/auth/userpools/FormEditText;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/auth/userpools/FormEditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$1;->c:Lcom/amazonaws/mobile/auth/userpools/FormEditText;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$1;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$1;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$1;->c:Lcom/amazonaws/mobile/auth/userpools/FormEditText;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->a(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$1;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$1;->b:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$1;->a:Ljava/lang/String;

    .line 23
    .line 24
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$1;->c:Lcom/amazonaws/mobile/auth/userpools/FormEditText;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->a(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Landroid/widget/TextView;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$1;->c:Lcom/amazonaws/mobile/auth/userpools/FormEditText;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->b(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Landroid/widget/EditText;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$1;->c:Lcom/amazonaws/mobile/auth/userpools/FormEditText;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->b(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Landroid/widget/EditText;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$1;->a:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$1;->c:Lcom/amazonaws/mobile/auth/userpools/FormEditText;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->b(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Landroid/widget/EditText;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$1;->c:Lcom/amazonaws/mobile/auth/userpools/FormEditText;

    .line 68
    .line 69
    invoke-static {v2}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->b(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Landroid/widget/EditText;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    or-int/lit8 v2, v2, 0x10

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$1;->c:Lcom/amazonaws/mobile/auth/userpools/FormEditText;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->b(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Landroid/widget/EditText;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$1;->c:Lcom/amazonaws/mobile/auth/userpools/FormEditText;

    .line 90
    .line 91
    invoke-static {v2}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->b(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Landroid/widget/EditText;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    and-int/lit8 v2, v2, -0x11

    .line 100
    .line 101
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 102
    .line 103
    .line 104
    :goto_1
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/FormEditText$1;->c:Lcom/amazonaws/mobile/auth/userpools/FormEditText;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->b(Lcom/amazonaws/mobile/auth/userpools/FormEditText;)Landroid/widget/EditText;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 111
    .line 112
    .line 113
    return-void
.end method
