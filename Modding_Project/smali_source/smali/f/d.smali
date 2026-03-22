.class public final synthetic Lf/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/applovin/mediation/MaxAdRevenueListener;


# instance fields
.field public final synthetic a:Lf/e;


# direct methods
.method public synthetic constructor <init>(Lf/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf/d;->a:Lf/e;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAdRevenuePaid(Lcom/applovin/mediation/MaxAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/d;->a:Lf/e;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lf/e;->d(Lf/e;Lcom/applovin/mediation/MaxAd;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
