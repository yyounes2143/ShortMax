package com.bytedance.bdtracker;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes3.dex */
public final class i extends Lambda implements Function1<String, String> {

    /* renamed from: a  reason: collision with root package name */
    public static final i f12046a = new i();

    public i() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @NotNull
    /* renamed from: a */
    public final String invoke(@Nullable String str) {
        if (str == null) {
            return "DDL failed";
        }
        if (str.hashCode() == -1867169789 && str.equals("success")) {
            return "DDL response data empty";
        }
        return str;
    }
}
