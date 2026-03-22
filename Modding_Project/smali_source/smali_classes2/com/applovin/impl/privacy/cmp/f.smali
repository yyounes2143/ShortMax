.class public final synthetic Lcom/applovin/impl/privacy/cmp/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadSuccessListener;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/privacy/cmp/a;

.field public final synthetic b:Lcom/applovin/impl/privacy/cmp/a$a;

.field public final synthetic c:Lcom/google/android/ump/FormError;

.field public final synthetic d:Lcom/applovin/impl/k0;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/privacy/cmp/a;Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;Lcom/applovin/impl/k0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/privacy/cmp/f;->a:Lcom/applovin/impl/privacy/cmp/a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/privacy/cmp/f;->b:Lcom/applovin/impl/privacy/cmp/a$a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/impl/privacy/cmp/f;->c:Lcom/google/android/ump/FormError;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/applovin/impl/privacy/cmp/f;->d:Lcom/applovin/impl/k0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onConsentFormLoadSuccess(Lcom/google/android/ump/ConsentForm;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/privacy/cmp/f;->a:Lcom/applovin/impl/privacy/cmp/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/privacy/cmp/f;->b:Lcom/applovin/impl/privacy/cmp/a$a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/impl/privacy/cmp/f;->c:Lcom/google/android/ump/FormError;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/applovin/impl/privacy/cmp/f;->d:Lcom/applovin/impl/k0;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lcom/applovin/impl/privacy/cmp/a;->g(Lcom/applovin/impl/privacy/cmp/a;Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;Lcom/applovin/impl/k0;Lcom/google/android/ump/ConsentForm;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
