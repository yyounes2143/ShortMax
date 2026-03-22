.class public interface abstract Landroidx/compose/ui/autofill/Autofill;
.super Ljava/lang/Object;
.source "Autofill.kt"


# annotations
.annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract cancelAutofillForNode(Landroidx/compose/ui/autofill/AutofillNode;)V
    .param p1    # Landroidx/compose/ui/autofill/AutofillNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract requestAutofillForNode(Landroidx/compose/ui/autofill/AutofillNode;)V
    .param p1    # Landroidx/compose/ui/autofill/AutofillNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
