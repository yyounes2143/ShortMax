package com.startshorts.androidplayer.bean.purchase;

import com.startshorts.androidplayer.bean.subs.GPayExchangePremiumResult;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GPayExchangeCoinsResult.kt */
@Metadata
/* loaded from: classes6.dex */
public class GPayExchangeCoinsResult {
    private int bonus;
    private int coins;
    @Nullable
    private GPayExchangePremiumResult.RechargeUserInfo rechargeUserInfo;
    @Nullable
    private String userCodeHaveRight;

    public final int getBonus() {
        return this.bonus;
    }

    public final int getCoins() {
        return this.coins;
    }

    @Nullable
    public final GPayExchangePremiumResult.RechargeUserInfo getRechargeUserInfo() {
        return this.rechargeUserInfo;
    }

    @Nullable
    public final String getUserCodeHaveRight() {
        return this.userCodeHaveRight;
    }

    public final void setBonus(int i10) {
        this.bonus = i10;
    }

    public final void setCoins(int i10) {
        this.coins = i10;
    }

    public final void setRechargeUserInfo(@Nullable GPayExchangePremiumResult.RechargeUserInfo rechargeUserInfo) {
        this.rechargeUserInfo = rechargeUserInfo;
    }

    public final void setUserCodeHaveRight(@Nullable String str) {
        this.userCodeHaveRight = str;
    }

    @NotNull
    public String toString() {
        return "GPayExchangeCoinsResult(coins=" + this.coins + ", bonus=" + this.bonus + ')';
    }
}
