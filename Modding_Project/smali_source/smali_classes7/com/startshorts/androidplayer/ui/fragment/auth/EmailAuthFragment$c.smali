.class public final Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$c;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 EmailAuthFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n187#2,5:98\n71#3:103\n77#4:104\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->O(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method
