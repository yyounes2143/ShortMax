.class public interface abstract Lkotlin/reflect/KFunction;
.super Ljava/lang/Object;
.source "KFunction.kt"

# interfaces
.implements Lkotlin/reflect/KCallable;
.implements Lms/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/KFunction$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/reflect/KCallable<",
        "TR;>;",
        "Lms/f<",
        "TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract isExternal()Z
.end method

.method public abstract isInfix()Z
.end method

.method public abstract isInline()Z
.end method

.method public abstract isOperator()Z
.end method

.method public abstract isSuspend()Z
.end method
