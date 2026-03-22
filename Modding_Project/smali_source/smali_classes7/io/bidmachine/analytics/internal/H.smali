.class public final Lio/bidmachine/analytics/internal/H;
.super Lio/bidmachine/analytics/internal/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/H$a;
    }
.end annotation


# static fields
.field public static final j:Lio/bidmachine/analytics/internal/H$a;


# instance fields
.field private final g:Lio/bidmachine/analytics/internal/J;

.field private final h:Lio/bidmachine/analytics/internal/I;

.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/H$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/H$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/bidmachine/analytics/internal/H;->j:Lio/bidmachine/analytics/internal/H$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lio/bidmachine/analytics/internal/J;Lio/bidmachine/analytics/internal/I;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/i;-><init>()V

    .line 4
    iput-object p1, p0, Lio/bidmachine/analytics/internal/H;->g:Lio/bidmachine/analytics/internal/J;

    .line 5
    iput-object p2, p0, Lio/bidmachine/analytics/internal/H;->h:Lio/bidmachine/analytics/internal/I;

    .line 6
    const-string p1, "alog"

    iput-object p1, p0, Lio/bidmachine/analytics/internal/H;->i:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/analytics/internal/J;Lio/bidmachine/analytics/internal/I;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p4, 0x2

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    .line 1
    new-instance p2, Lio/bidmachine/analytics/internal/I;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p4, p3}, Lio/bidmachine/analytics/internal/I;-><init>(Lio/bidmachine/analytics/internal/J;Lio/bidmachine/analytics/internal/G$a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/H;-><init>(Lio/bidmachine/analytics/internal/J;Lio/bidmachine/analytics/internal/I;)V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/analytics/ReaderConfig$Rule;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 4
    iget-object p2, p0, Lio/bidmachine/analytics/internal/H;->h:Lio/bidmachine/analytics/internal/I;

    invoke-virtual {p2, p1}, Lio/bidmachine/analytics/internal/I;->a(Lio/bidmachine/analytics/ReaderConfig$Rule;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/H;->i:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lio/bidmachine/analytics/internal/i$a;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lio/bidmachine/analytics/internal/i;->a(Lio/bidmachine/analytics/internal/i$a;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/analytics/internal/H;->h:Lio/bidmachine/analytics/internal/I;

    invoke-virtual {v0, p1}, Lio/bidmachine/analytics/internal/I;->a(Lio/bidmachine/analytics/internal/i$a;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/analytics/internal/i$a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/H;->a(Lio/bidmachine/analytics/internal/i$a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/analytics/internal/i;->e(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lio/bidmachine/analytics/internal/H;->h:Lio/bidmachine/analytics/internal/I;

    .line 5
    .line 6
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/I;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public f(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/H;->h:Lio/bidmachine/analytics/internal/I;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/I;->b()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lio/bidmachine/analytics/internal/i;->f(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
