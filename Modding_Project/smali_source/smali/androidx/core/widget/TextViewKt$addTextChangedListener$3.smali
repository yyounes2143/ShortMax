.class public final Landroidx/core/widget/TextViewKt$addTextChangedListener$3;
.super Lkotlin/jvm/internal/Lambda;
.source "TextView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/widget/TextViewKt;->addTextChangedListener$default(Landroid/widget/TextView;Lat/o;Lat/o;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/text/Editable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$3\n*L\n1#1,97:1\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/core/widget/TextViewKt$addTextChangedListener$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/widget/TextViewKt$addTextChangedListener$3;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/core/widget/TextViewKt$addTextChangedListener$3;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/core/widget/TextViewKt$addTextChangedListener$3;->INSTANCE:Landroidx/core/widget/TextViewKt$addTextChangedListener$3;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroid/text/Editable;

    invoke-virtual {p0, p1}, Landroidx/core/widget/TextViewKt$addTextChangedListener$3;->invoke(Landroid/text/Editable;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/text/Editable;)V
    .locals 0
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method
