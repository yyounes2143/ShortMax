.class final Lio/bidmachine/rendering/internal/view/privacy/b$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/view/privacy/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/bidmachine/rendering/internal/view/privacy/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/privacy/b$c;->d:Landroid/content/Context;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic b(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/rendering/internal/view/privacy/b$c;->e(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final e(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final d()Lio/bidmachine/rendering/internal/view/privacy/c;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/view/privacy/c;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/privacy/b$c;->d:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/view/privacy/c;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lio/bidmachine/rendering/internal/view/privacy/d;

    .line 9
    .line 10
    invoke-direct {v1}, Lio/bidmachine/rendering/internal/view/privacy/d;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/privacy/b$c;->d()Lio/bidmachine/rendering/internal/view/privacy/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
