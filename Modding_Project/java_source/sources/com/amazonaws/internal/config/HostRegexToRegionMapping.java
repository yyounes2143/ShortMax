package com.amazonaws.internal.config;

import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* loaded from: classes2.dex */
public class HostRegexToRegionMapping {

    /* renamed from: a  reason: collision with root package name */
    private final String f5029a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5030b;

    public HostRegexToRegionMapping(String str, String str2) {
        if (str != null && !str.isEmpty()) {
            try {
                Pattern.compile(str);
                if (str2 != null && !str2.isEmpty()) {
                    this.f5029a = str;
                    this.f5030b = str2;
                    return;
                }
                throw new IllegalArgumentException("Invalid HostRegexToRegionMapping configuration: regionName must be non-empty");
            } catch (PatternSyntaxException e10) {
                throw new IllegalArgumentException("Invalid HostRegexToRegionMapping configuration: hostNameRegex is not a valid regex", e10);
            }
        }
        throw new IllegalArgumentException("Invalid HostRegexToRegionMapping configuration: hostNameRegex must be non-empty");
    }

    public String a() {
        return this.f5029a;
    }

    public String b() {
        return this.f5030b;
    }
}
