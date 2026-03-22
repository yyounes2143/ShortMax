.class public Lio/bidmachine/iab/mraid/MraidView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/iab/mraid/MraidPlacementType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lio/bidmachine/iab/CacheControl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field public g:Lio/bidmachine/iab/mraid/p;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public h:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

.field private i:Lio/bidmachine/iab/utils/IabElementStyle;

.field private j:Lio/bidmachine/iab/utils/IabElementStyle;

.field private k:Lio/bidmachine/iab/utils/IabElementStyle;

.field private l:Lio/bidmachine/iab/utils/IabElementStyle;

.field private m:F

.field private n:F

.field private o:F

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidPlacementType;->INLINE:Lio/bidmachine/iab/mraid/MraidPlacementType;

    invoke-direct {p0, v0}, Lio/bidmachine/iab/mraid/MraidView$a;-><init>(Lio/bidmachine/iab/mraid/MraidPlacementType;)V

    return-void
.end method

.method constructor <init>(Lio/bidmachine/iab/mraid/MraidPlacementType;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/mraid/MraidPlacementType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->f:[Ljava/lang/String;

    const/high16 v0, 0x40400000    # 3.0f

    .line 4
    iput v0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->m:F

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->n:F

    .line 6
    iput v0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->o:F

    .line 7
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$a;->a:Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 8
    sget-object p1, Lio/bidmachine/iab/CacheControl;->FullLoad:Lio/bidmachine/iab/CacheControl;

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$a;->b:Lio/bidmachine/iab/CacheControl;

    .line 9
    const-string p1, "https://localhost"

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$a;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lio/bidmachine/iab/mraid/MraidView$a;)Lio/bidmachine/iab/CacheControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->b:Lio/bidmachine/iab/CacheControl;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lio/bidmachine/iab/mraid/MraidView$a;)F
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->m:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lio/bidmachine/iab/mraid/MraidView$a;)Lio/bidmachine/iab/utils/IabElementStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->k:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lio/bidmachine/iab/mraid/MraidView$a;)Lio/bidmachine/iab/utils/IabElementStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->l:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lio/bidmachine/iab/mraid/MraidView$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lio/bidmachine/iab/mraid/MraidView$a;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->f:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lio/bidmachine/iab/mraid/MraidView$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lio/bidmachine/iab/mraid/MraidView$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lio/bidmachine/iab/mraid/MraidView$a;)Lio/bidmachine/iab/mraid/MraidPlacementType;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->a:Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lio/bidmachine/iab/mraid/MraidView$a;)F
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->n:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic m(Lio/bidmachine/iab/mraid/MraidView$a;)F
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->o:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic n(Lio/bidmachine/iab/mraid/MraidView$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->p:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic o(Lio/bidmachine/iab/mraid/MraidView$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->q:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Lio/bidmachine/iab/mraid/MraidView$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->r:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic q(Lio/bidmachine/iab/mraid/MraidView$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->s:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic r(Lio/bidmachine/iab/mraid/MraidView$a;)Lio/bidmachine/iab/utils/IabElementStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->i:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic s(Lio/bidmachine/iab/mraid/MraidView$a;)Lio/bidmachine/iab/utils/IabElementStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->j:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public A(Z)Lio/bidmachine/iab/mraid/MraidView$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/MraidView$a;->p:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public B(Lio/bidmachine/iab/mraid/p;)Lio/bidmachine/iab/mraid/MraidView$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$a;->g:Lio/bidmachine/iab/mraid/p;

    .line 2
    .line 3
    return-object p0
.end method

.method public C(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidView$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$a;->k:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public D(F)Lio/bidmachine/iab/mraid/MraidView$a;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/iab/mraid/MraidView$a;->m:F

    .line 2
    .line 3
    return-object p0
.end method

.method public E(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidView$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public F(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidView$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$a;->l:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public G(Z)Lio/bidmachine/iab/mraid/MraidView$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/MraidView$a;->r:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public H(Z)Lio/bidmachine/iab/mraid/MraidView$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/MraidView$a;->s:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public c(Landroid/content/Context;)Lio/bidmachine/iab/mraid/MraidView;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p0, v1}, Lio/bidmachine/iab/mraid/MraidView;-><init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidView$a;Lio/bidmachine/iab/mraid/MraidView$b;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public h(Z)Lio/bidmachine/iab/mraid/MraidView$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/MraidView$a;->q:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public t(Lio/bidmachine/iab/measurer/MraidAdMeasurer;)Lio/bidmachine/iab/mraid/MraidView$a;
    .locals 0
    .param p1    # Lio/bidmachine/iab/measurer/MraidAdMeasurer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$a;->h:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 2
    .line 3
    return-object p0
.end method

.method public u(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidView$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public v(Lio/bidmachine/iab/CacheControl;)Lio/bidmachine/iab/mraid/MraidView$a;
    .locals 0
    .param p1    # Lio/bidmachine/iab/CacheControl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$a;->b:Lio/bidmachine/iab/CacheControl;

    .line 2
    .line 3
    return-object p0
.end method

.method public w(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidView$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$a;->i:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public x(F)Lio/bidmachine/iab/mraid/MraidView$a;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/iab/mraid/MraidView$a;->n:F

    .line 2
    .line 3
    return-object p0
.end method

.method public y(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidView$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$a;->j:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public z(F)Lio/bidmachine/iab/mraid/MraidView$a;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/iab/mraid/MraidView$a;->o:F

    .line 2
    .line 3
    return-object p0
.end method
