package com.google.firebase.components;

import java.util.Arrays;
import java.util.List;
import w7.c;
/* loaded from: classes5.dex */
public class DependencyCycleException extends DependencyException {

    /* renamed from: a  reason: collision with root package name */
    private final List<c<?>> f20604a;

    public DependencyCycleException(List<c<?>> list) {
        super("Dependency cycle detected: " + Arrays.toString(list.toArray()));
        this.f20604a = list;
    }
}
