.class Ltp/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Ltp/c;


# direct methods
.method private constructor <init>(Ltp/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltp/c$c;->a:Ltp/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltp/c;Ltp/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ltp/c$c;-><init>(Ltp/c;)V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ltp/c$c;->a:Ltp/c;

    .line 2
    .line 3
    invoke-static {v0}, Ltp/c;->b(Ltp/c;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0
.end method
