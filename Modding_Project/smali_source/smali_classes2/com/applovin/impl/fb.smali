.class public final synthetic Lcom/applovin/impl/fb;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/applovin/impl/q4$b;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/i8;

.field public final synthetic b:Lcom/applovin/sdk/AppLovinPostbackListener;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/i8;Lcom/applovin/sdk/AppLovinPostbackListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/fb;->a:Lcom/applovin/impl/i8;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/fb;->b:Lcom/applovin/sdk/AppLovinPostbackListener;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/impl/fb;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/fb;->a:Lcom/applovin/impl/i8;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/fb;->b:Lcom/applovin/sdk/AppLovinPostbackListener;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/impl/fb;->c:Ljava/lang/String;

    .line 6
    .line 7
    move-object v4, p2

    .line 8
    check-cast v4, Ljava/lang/String;

    .line 9
    .line 10
    move-object v5, p3

    .line 11
    check-cast v5, Ljava/lang/String;

    .line 12
    .line 13
    move v3, p1

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/applovin/impl/i8;->a(Lcom/applovin/impl/i8;Lcom/applovin/sdk/AppLovinPostbackListener;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
