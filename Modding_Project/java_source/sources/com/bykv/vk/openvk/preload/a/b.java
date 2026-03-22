package com.bykv.vk.openvk.preload.a;

import java.lang.reflect.Field;
import java.util.Locale;
/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: FieldNamingPolicy.java */
/* loaded from: classes3.dex */
public abstract class b implements c {

    /* renamed from: a  reason: collision with root package name */
    public static final b f11026a = new b("IDENTITY") { // from class: com.bykv.vk.openvk.preload.a.b.1
        @Override // com.bykv.vk.openvk.preload.a.c
        public final String a(Field field) {
            return field.getName();
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static b f11027b = new b("UPPER_CAMEL_CASE") { // from class: com.bykv.vk.openvk.preload.a.b.2
        @Override // com.bykv.vk.openvk.preload.a.c
        public final String a(Field field) {
            return b.a(field.getName());
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private static b f11028c = new b("UPPER_CAMEL_CASE_WITH_SPACES") { // from class: com.bykv.vk.openvk.preload.a.b.3
        @Override // com.bykv.vk.openvk.preload.a.c
        public final String a(Field field) {
            return b.a(b.a(field.getName(), " "));
        }
    };

    /* renamed from: d  reason: collision with root package name */
    private static b f11029d = new b("LOWER_CASE_WITH_UNDERSCORES") { // from class: com.bykv.vk.openvk.preload.a.b.4
        @Override // com.bykv.vk.openvk.preload.a.c
        public final String a(Field field) {
            return b.a(field.getName(), "_").toLowerCase(Locale.ENGLISH);
        }
    };

    /* renamed from: e  reason: collision with root package name */
    private static b f11030e = new b("LOWER_CASE_WITH_DASHES") { // from class: com.bykv.vk.openvk.preload.a.b.5
        @Override // com.bykv.vk.openvk.preload.a.c
        public final String a(Field field) {
            return b.a(field.getName(), "-").toLowerCase(Locale.ENGLISH);
        }
    };

    /* renamed from: f  reason: collision with root package name */
    private static b f11031f = new b("LOWER_CASE_WITH_DOTS") { // from class: com.bykv.vk.openvk.preload.a.b.6
        @Override // com.bykv.vk.openvk.preload.a.c
        public final String a(Field field) {
            return b.a(field.getName(), ".").toLowerCase(Locale.ENGLISH);
        }
    };

    private b(String str, int i10) {
    }

    static String a(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (Character.isUpperCase(charAt) && sb2.length() != 0) {
                sb2.append(str2);
            }
            sb2.append(charAt);
        }
        return sb2.toString();
    }

    /* synthetic */ b(String str, int i10, byte b10) {
        this(str, i10);
    }

    static String a(String str) {
        int length = str.length() - 1;
        int i10 = 0;
        while (!Character.isLetter(str.charAt(i10)) && i10 < length) {
            i10++;
        }
        char charAt = str.charAt(i10);
        if (Character.isUpperCase(charAt)) {
            return str;
        }
        char upperCase = Character.toUpperCase(charAt);
        if (i10 == 0) {
            return upperCase + str.substring(1);
        }
        return str.substring(0, i10) + upperCase + str.substring(i10 + 1);
    }
}
