.class public final synthetic Lcom/applovin/impl/privacy/cmp/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadFailureListener;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/privacy/cmp/a;

.field public final synthetic b:Lcom/applovin/impl/privacy/cmp/a$a;

.field public final synthetic c:Lcom/google/android/ump/FormError;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/privacy/cmp/a;Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/privacy/cmp/g;->a:Lcom/applovin/impl/privacy/cmp/a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/privacy/cmp/g;->b:Lcom/applovin/impl/privacy/cmp/a$a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/impl/privacy/cmp/g;->c:Lcom/google/android/ump/FormError;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onConsentFormLoadFailure(Lcom/google/android/ump/FormError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/privacy/cmp/g;->a:Lcom/applovin/impl/privacy/cmp/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/privacy/cmp/g;->b:Lcom/applovin/impl/privacy/cmp/a$a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/impl/privacy/cmp/g;->c:Lcom/google/android/ump/FormError;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/applovin/impl/privacy/cmp/a;->c(Lcom/applovin/impl/privacy/cmp/a;Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;Lcom/google/android/ump/FormError;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
