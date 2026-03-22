.class public final synthetic Lfa/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;


# instance fields
.field public final synthetic a:Lfa/c;


# direct methods
.method public synthetic constructor <init>(Lfa/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfa/b;->a:Lfa/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSdkInitialized(Lcom/applovin/sdk/AppLovinSdkConfiguration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/b;->a:Lfa/c;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lfa/c;->V(Lfa/c;Lcom/applovin/sdk/AppLovinSdkConfiguration;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
