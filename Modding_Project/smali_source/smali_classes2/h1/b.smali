.class public final synthetic Lh1/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/applovin/shadow/okhttp3/EventListener$Factory;


# instance fields
.field public final synthetic a:Lcom/applovin/shadow/okhttp3/EventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/shadow/okhttp3/EventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh1/b;->a:Lcom/applovin/shadow/okhttp3/EventListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final create(Lcom/applovin/shadow/okhttp3/Call;)Lcom/applovin/shadow/okhttp3/EventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lh1/b;->a:Lcom/applovin/shadow/okhttp3/EventListener;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/applovin/shadow/okhttp3/internal/Util;->a(Lcom/applovin/shadow/okhttp3/EventListener;Lcom/applovin/shadow/okhttp3/Call;)Lcom/applovin/shadow/okhttp3/EventListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
