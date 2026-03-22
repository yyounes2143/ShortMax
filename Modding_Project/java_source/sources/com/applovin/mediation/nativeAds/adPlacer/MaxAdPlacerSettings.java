package com.applovin.mediation.nativeAds.adPlacer;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.o;
import java.util.Set;
import java.util.TreeSet;
/* loaded from: classes2.dex */
public class MaxAdPlacerSettings {
    public static final int MIN_REPEATING_INTERVAL = 2;

    /* renamed from: a  reason: collision with root package name */
    private final String f10854a;

    /* renamed from: b  reason: collision with root package name */
    private String f10855b;

    /* renamed from: c  reason: collision with root package name */
    private final Set f10856c = new TreeSet();

    /* renamed from: d  reason: collision with root package name */
    private int f10857d = 0;

    /* renamed from: e  reason: collision with root package name */
    private int f10858e = 256;

    /* renamed from: f  reason: collision with root package name */
    private int f10859f = 4;

    public MaxAdPlacerSettings(String str) {
        this.f10854a = str;
    }

    public void addFixedPosition(int i10) {
        this.f10856c.add(Integer.valueOf(i10));
    }

    public String getAdUnitId() {
        return this.f10854a;
    }

    public Set<Integer> getFixedPositions() {
        return this.f10856c;
    }

    public int getMaxAdCount() {
        return this.f10858e;
    }

    public int getMaxPreloadedAdCount() {
        return this.f10859f;
    }

    @Nullable
    public String getPlacement() {
        return this.f10855b;
    }

    public int getRepeatingInterval() {
        return this.f10857d;
    }

    public boolean hasValidPositioning() {
        if (this.f10856c.isEmpty() && !isRepeatingEnabled()) {
            return false;
        }
        return true;
    }

    public boolean isRepeatingEnabled() {
        if (this.f10857d >= 2) {
            return true;
        }
        return false;
    }

    public void resetFixedPositions() {
        this.f10856c.clear();
    }

    public void setMaxAdCount(int i10) {
        this.f10858e = i10;
    }

    public void setMaxPreloadedAdCount(int i10) {
        this.f10859f = i10;
    }

    public void setPlacement(@Nullable String str) {
        this.f10855b = str;
    }

    public void setRepeatingInterval(int i10) {
        if (i10 >= 2) {
            this.f10857d = i10;
            o.g("MaxAdPlacerSettings", "Repeating interval set to " + i10);
            return;
        }
        this.f10857d = 0;
        o.j("MaxAdPlacerSettings", "Repeating interval has been disabled, since it has been set to " + i10 + ", which is less than minimum value of 2");
    }

    @NonNull
    public String toString() {
        return "MaxAdPlacerSettings{adUnitId='" + this.f10854a + "', fixedPositions=" + this.f10856c + ", repeatingInterval=" + this.f10857d + ", maxAdCount=" + this.f10858e + ", maxPreloadedAdCount=" + this.f10859f + '}';
    }
}
